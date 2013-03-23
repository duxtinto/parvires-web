# == Schema Information
#
# Table name: partidos
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Partido < ActiveRecord::Base
  attr_accessible :nombre, :siglas
  
  has_many :gruposParlamentarios, :inverse_of => :partido
end
