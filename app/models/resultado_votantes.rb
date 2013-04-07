# == Schema Information
#
# Table name: resultado_votantes
#
#  id              :integer          not null, primary key
#  numVotan        :integer
#  numNoVotan      :integer
#  aFavor          :integer
#  enContra        :integer
#  abstencion      :integer
#  votacion_web_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class ResultadoVotantes < ActiveRecord::Base
  attr_accessible :aFavor, :abstencion, :enContra, :numNoVotan, :numVotan, :votacion_web_id
  
  belongs_to :votacionWeb, :inverse_of => :resultadoVotantes, :dependent => :destroy
end
