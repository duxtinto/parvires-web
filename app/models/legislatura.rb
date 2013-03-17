class Legislatura < ActiveRecord::Base
  attr_accessible :fechaFin, :fechaInicio, :num
  
  belongs_to :camara, :inverse_of => :legislaturas
  has_many :sesiones, :inverse_of => :legislatura
end
