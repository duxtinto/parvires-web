class Sesion < ActiveRecord::Base
  attr_accessible :descripcion, :fecha, :ref, :titulo
  
  belongs_to :legislatura, :inverse_of => :sesiones
  has_many :votaciones, :inverse_of => :sesion
end
