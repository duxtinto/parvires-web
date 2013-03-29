# == Schema Information
#
# Table name: votaciones
#
#  id          :integer          not null, primary key
#  ref         :string(255)
#  titulo      :string(255)
#  descripcion :text
#  fecha       :date
#  sesion_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  enabled     :boolean          default(TRUE)
#  frontpage   :boolean          default(FALSE)
#

class Votacion < ActiveRecord::Base
  attr_accessible :descripcion, :fecha, :ref, :titulo
  
  belongs_to :sesion, :inverse_of => :votaciones
  has_many :votosPoliticos, :inverse_of => :votacion
  has_one :resultadoPoliticos, :inverse_of => :votacion
  has_many :resultadoPoliticoGrupos, :inverse_of => :votacion
  has_many :votacionesWeb, :inverse_of => :votacion
end
