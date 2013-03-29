# == Schema Information
#
# Table name: resultado_politico_grupos
#
#  id                    :integer          not null, primary key
#  votacion_id           :integer
#  grupoParlamentario_id :integer
#  votos                 :text                                   # JSON Encoded field
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class ResultadoPoliticoGrupo < ActiveRecord::Base
  attr_accessible :numVotos, :voto
  
  belongs_to :votacion, :inverse_of => :resultadoPoliticoGrupos
  belongs_to :grupoParlamentario, :inverse_of => :resultadoPoliticoGrupos
end
