class ResultadoVotantes < ActiveRecord::Base
  attr_accessible :aFavor, :abstencion, :enContra, :numNoVotan, :numVotan
  
  belongs_to :votacion, :inverse_of => :resultadoVotantes, :dependent => :destroy
end
