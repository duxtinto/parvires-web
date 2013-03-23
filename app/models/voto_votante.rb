# == Schema Information
#
# Table name: voto_votantes
#
#  id          :integer          not null, primary key
#  voto        :string(255)
#  fecha       :date
#  votante_id  :integer
#  votacion_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class VotoVotante < ActiveRecord::Base
  attr_accessible :fecha, :voto
  
  belongs_to :votante, :inverse_of => :votos
  belongs_to :votacion, :inverse_of => :votosVotantes
end
