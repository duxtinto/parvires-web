# == Schema Information
#
# Table name: legislaturas
#
#  id          :integer          not null, primary key
#  num         :integer
#  fechaInicio :date
#  fechaFin    :date
#  camara_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Legislatura < ActiveRecord::Base
  attr_accessible :fechaFin, :fechaInicio, :num
  
  belongs_to :camara, :inverse_of => :legislaturas
  has_many :sesiones, :inverse_of => :legislatura
  has_many :legislaturasPoliticos, :inverse_of => :legislatura
  has_many :politicos, :through => :legislaturasPoliticos
  has_many :iniciativas, inverse_of: :legislatura
  
end
