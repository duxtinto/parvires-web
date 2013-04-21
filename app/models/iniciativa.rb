# == Schema Information
#
# Table name: iniciativas
#
#  id             :integer          not null, primary key
#  titulo         :string(255)
#  url            :string(500)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  legislatura_id :integer
#

class Iniciativa < ActiveRecord::Base
  attr_accessible :titulo, :url
  
  belongs_to :legislatura, inverse_of: :iniciativas
  has_many :votaciones, inverse_of: :iniciativa
end
