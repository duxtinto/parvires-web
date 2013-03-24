require 'nokogiri'
require 'open-uri'
require 'logger'
require 'date'

votacionXML = ARGV.first
if (!File.exists? (votacionXML))
   puts "El archivo '#{votacionXML}' no existe"
   exit
end

f = File.open(votacionXML)
doc = Nokogiri::XML(f)
f.close

puts "Procesando archivo '#{votacionXML}'" 

legislaturaId = 1

# Meta-datos de la votacion
info = doc.at_css('Resultado Informacion')
numSesion = info.at_css('Sesion').text
numVotacion = info.at_css('NumeroVotacion').text
fecha = Date.strptime(info.at_css('Fecha').text, '%d/%m/%Y')

# Crear (si es necesario) la sesión y la votación
sesion = Sesion.where(legislatura_id: legislaturaId, fecha: fecha, ref: numSesion).first_or_create()
votacion = Votacion.where(sesion_id: sesion.id, fecha: fecha, ref: numVotacion).first_or_create()

puts "Sesion: #{numSesion}"
puts "Votacion: #{numVotacion}"
puts "Votacion: #{fecha}"

# Resultados totales
totales = doc.at_css('Resultado Totales')
presentes = totales.at_css('Presentes').text
aFavor = totales.at_css('AFavor').text
enContra = totales.at_css('EnContra').text
abstenciones = totales.at_css('Abstenciones').text
noVotan = totales.at_css('NoVotan').text

puts "Presentes: #{presentes}"
puts "A Favor: #{aFavor}"
puts "En Contra: #{enContra}"
puts "Abstenciones: #{abstenciones}"
puts "No Votan: #{noVotan}"

# Crear (o actualizar) los resultados
resultados = ResultadoPoliticos.where(votacion_id: votacion.id).first_or_create()
resultados.numVotan = presentes
resultados.numNoVotan = noVotan
resultados.aFavor = aFavor
resultados.enContra = enContra
resultados.abstencion = abstenciones
resultados.save
#puts "Resultados: #{resultados.to_s}"

# Votaciones
votos = doc.css('Votaciones Votacion')
votos.each do |voto|
  diputadoNombre = voto.at_css('Diputado').text
  diputadoVoto = case (voto.at_css('Voto').text.downcase)
                 when 'no' then 'no'
                 when 'sí' then 'si'
                 when 'no vota' then 'noVota'
                 when 'abstención' then 'abstencion'
                 else
                   nil
                 end
  if (diputadoVoto == nil)
    puts "ERROR: Voto no reconocido: #{voto.at_css('Voto').text.downcase}"
    continue
  end
  
#  puts "Diputado: #{diputadoNombre}"
#  puts "Voto: #{diputadoVoto}"
  
  politico = Politico.where(nombre: diputadoNombre).first
  if (politico == nil)
    puts "ERROR: El diputado no existe: #{diputadoNombre}"
    continue
  end
  
  voto = VotoPolitico.where(votacion_id: sesion.id, politico_id: politico.id).first_or_create(voto: diputadoVoto)  
 
#  sleep 2
end

