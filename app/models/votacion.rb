class Votacion < ActiveRecord::Base
  attr_accessible :descripcion, :fecha, :ref, :titulo
  
  belongs_to :sesion, :inverse_of => :votaciones
  has_many :votosVotantes, :inverse_of => :votacion
  has_one :resultadoVotantes, :inverse_of => :votacion 
  has_one :resultadoPoliticos, :inverse_of => :votacion
end
