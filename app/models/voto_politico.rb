# == Schema Information
#
# Table name: voto_politicos
#
#  id          :integer          not null, primary key
#  voto        :string(255)
#  politico_id :integer
#  votacion_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class VotoPolitico < ActiveRecord::Base
  attr_accessible :voto
  
  belongs_to :politico, :inverse_of => :votos
  belongs_to :votacion, :inverse_of => :votosPoliticos
end
