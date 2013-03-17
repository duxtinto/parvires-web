class Camara < ActiveRecord::Base
  attr_accessible :nombre
  has_many :legislaturas, :inverse_of => :camara
end
