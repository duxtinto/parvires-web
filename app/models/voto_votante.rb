# == Schema Information
#
# Table name: voto_votantes
#
#  id              :integer          not null, primary key
#  voto            :string(255)
#  fecha           :date
#  votante_id      :integer
#  votacion_web_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class VotoVotante < ActiveRecord::Base
  attr_accessible :fecha, :voto, :votante_id, :votacion_web_id
  
  validates :votacion_web_id, :uniqueness => { :scope => :votante_id }
    
  belongs_to :votante, :inverse_of => :votos
  belongs_to :votacionWeb, :inverse_of => :votosVotantes
  
  after_create :actualizar_resultados
  
  protected
  def actualizar_resultados
    votacion = VotacionWeb.find(self.votacion_web_id)
    resultado = ResultadoVotantes.where(votacion_web_id: votacion.id).first;

    case self.voto.downcase
      when 'si'
        resultado.aFavor += 1
        resultado.numVotan += 1
      when 'no'
        resultado.enContra += 1
        resultado.numVotan += 1
      when 'abstencion'
        resultado.abstencion += 1
        resultado.numVotan += 1
    end
    
    resultado.save
  end
end
