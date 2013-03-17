class ResultadoPoliticos < ActiveRecord::Base
  attr_accessible :aFavor, :abstencion, :enContra, :numNoVotan, :numVotan
  
  belongs_to :votacion, :inverse_of => :resultadoPoliticos, :dependent => :destroy
end
