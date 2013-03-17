# == Schema Information
#
# Table name: votantes
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  apellidos  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Votante < ActiveRecord::Base
  attr_accessible :apellidos, :nombre
  
  has_one :user, :inverse_of => :votante
  has_many :votos, :class_name => "VotoVotante", :inverse_of => :votante
end
