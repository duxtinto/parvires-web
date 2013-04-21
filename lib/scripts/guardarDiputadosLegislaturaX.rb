require 'nokogiri'
require 'open-uri'
require 'logger'
require 'date'


logger = Logger.new(STDOUT)

baseUrl = 'http://www.congreso.es'
# String format variables: pageNum 
diputadosUrl = baseUrl + "/portal/page/portal/Congreso/Congreso/Diputados?_piref73_2874067_73_1333049_1333049.next_page=/wc/busquedaAlfabeticaDiputados&paginaActual=%d&idLegislatura=10&tipoBusqueda=completo"

i=0;
begin 
  url = diputadosUrl % i
  
  # Descargar la web con los diputados
  dataDiputados = Nokogiri::HTML(open(url))

  # Procesar la lista de diputados
  diputados = dataDiputados.css('#RESULTADOS_DIPUTADOS .listado_1 ul li')
  diputados.each do |diputado|
    # Inicialización
    legislaturaId = 1 # Hardcoded id for the legislature  X
    diputadoUrl = diputado.at_css('a').attr('href')
    diputadoNombre = diputado.at_css('a').text
    diputadoGP = diputado.at_css('span').text[1..-2].downcase!
    
    # Obtenemos (si existe) el registro del político y del político para la legislatura
    gp = GrupoParlamentario.find_by_ref(diputadoGP)
    politico = Politico.where(nombre: diputadoNombre).first_or_create(nombre: diputadoNombre)
    legislaturaPolitico = LegislaturaPolitico.where(politico_id: politico.id, legislatura_id: legislaturaId).first_or_initialize()
    legislaturaPolitico.grupoParlamentario_id = gp.id       
    
    # Procesamos la página del político
    dataDiputado = Nokogiri::HTML(open(baseUrl + diputadoUrl))
    fechaAlta = nil
    fechaBaja = nil
    dataDiputado.css('#curriculum .dip_rojo').each do |div| 
      texto = div.text
      if (texto.start_with?('Fecha alta:'))
        fechaAlta = Date.strptime(texto.slice(/^Fecha alta: (.*)\.$/i, 1), '%d/%m/%Y')  
      elsif (texto.start_with?('Causó baja el'))
        fechaBaja = Date.strptime(texto.slice(/^Causó baja el (.*)\.$/i, 1), '%d/%m/%Y')
      end
    end
    
    # Añade o actualiza los datos del diputado en la base de datos. 
    legislaturaPolitico.fechaAlta = fechaAlta
    legislaturaPolitico.fechaBaja = fechaBaja
    legislaturaPolitico.enActivo = (fechaBaja == nil) ? true : false; 
    politico.save
    legislaturaPolitico.save
    
    # Displaying information    
    logger.info diputadoUrl
    logger.info diputadoNombre
    logger.info diputadoGP
    logger.info fechaAlta.to_s
    logger.info fechaBaja.to_s
    
    sleep 1
  end
  if diputados.empty? 
    url = ''
  end

  i += 1
  sleep 1
end while (!url.empty?)
