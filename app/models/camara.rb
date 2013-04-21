# == Schema Information
#
# Table name: camaras
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Camara < ActiveRecord::Base
  attr_accessible :nombre
  
  has_many :legislaturas, :inverse_of => :camara
  has_many :gruposParlamentarios, :inverse_of => :camara
end
