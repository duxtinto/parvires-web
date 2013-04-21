# == Schema Information
#
# Table name: votantes
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  apellidos  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Votante < ActiveRecord::Base
  attr_accessible :apellidos, :nombre, :user_id
  
  belongs_to :user, :inverse_of => :votante, :dependent => :destroy
  has_many :votos, :class_name => "VotoVotante", :inverse_of => :votante
  
  def ha_votado? (votacionWeb)
    if (!votacionWeb.is_a?(VotacionWeb))
      votacionWeb = VotacionWeb.find(votacionWeb)
    end
    
    return VotoVotante.where(votante_id: self.id, votacion_web_id: votacionWeb.id).exists?     
  end
  
end
