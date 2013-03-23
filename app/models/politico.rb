# == Schema Information
#
# Table name: politicos
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Politico < ActiveRecord::Base
  attr_accessible :nombre
  
  has_many :legislaturasPoliticos, :inverse_of => :politico
  has_many :legislaturas, :through => :legislaturasPoliticos
  has_many :gruposParlamentarios, :through => :legislaturasPoliticos
end
