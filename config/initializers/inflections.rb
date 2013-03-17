# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end
#
# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.acronym 'RESTful'
# end

# Spanish translations of models
ActiveSupport::Inflector.inflections do |inflect|
  inflect.irregular 'votante', 'votantes'
  inflect.irregular 'votacion', 'votaciones'
  inflect.irregular 'voto', 'votos'
  inflect.irregular 'resultado', 'resultados'
  inflect.irregular 'politico', 'politicos'
  inflect.irregular 'camara', 'camaras'
  inflect.irregular 'partido', 'partidos'
  inflect.irregular 'legislatura', 'legislaturas'
  inflect.irregular 'asiento', 'asientos'
  inflect.irregular 'resultadoVotantes', 'resultadosVotantes'
  inflect.irregular 'resultadoPoliticos', 'resultadosPoliticos'
  inflect.irregular 'votoVotante', 'votosVotantes'
  inflect.irregular 'votoPolitico', 'votosPoliticos'
  inflect.irregular 'partidoPolitico', 'partidosPoliticos'
  inflect.irregular 'grupoParlamentario', 'gruposParlamentarios'
  inflect.irregular 'sesion', 'sesiones'
#  inflect.irregular '', ''
end
