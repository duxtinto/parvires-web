class Iniciativa < ActiveRecord::Base
  attr_accessible :titulo, :url
  
  belongs_to :legislatura, inverse_of: :iniciativas
  has_many :votaciones, inverse_of: :iniciativa
end
