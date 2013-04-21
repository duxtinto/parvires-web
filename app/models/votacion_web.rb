# == Schema Information
#
# Table name: votacion_webs
#
#  id          :integer          not null, primary key
#  votacion_id :integer
#  ref         :string(255)
#  titulo      :string(255)
#  descripcion :text
#  enabled     :boolean          default(TRUE)
#  frontpage   :boolean          default(FALSE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class VotacionWeb < ActiveRecord::Base
  attr_accessible :descripcion, :enabled, :frontpage, :ref, :titulo
  
  has_many :votosVotantes, :inverse_of => :votacionWeb
  has_one :resultadoVotantes, :inverse_of => :votacionWeb 
  belongs_to :votacion, :inverse_of => :votacionesWeb
end
