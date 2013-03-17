class VotoVotante < ActiveRecord::Base
  attr_accessible :fecha, :voto
  
  belongs_to :votante, :inverse_of => :votos
  belongs_to :votacion, :inverse_of => :votosVotantes
end
