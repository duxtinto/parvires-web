# == Schema Information
#
# Table name: sesiones
#
#  id             :integer          not null, primary key
#  ref            :string(255)
#  titulo         :string(255)
#  descripcion    :text
#  fecha          :date
#  legislatura_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Sesion < ActiveRecord::Base
  attr_accessible :descripcion, :fecha, :ref, :titulo
  
  belongs_to :legislatura, :inverse_of => :sesiones
  has_many :votaciones, :inverse_of => :sesion
end
