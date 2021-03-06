# == Schema Information
#
# Table name: resultado_politicos
#
#  id          :integer          not null, primary key
#  numVotan    :integer
#  numNoVotan  :integer
#  aFavor      :integer
#  enContra    :integer
#  abstencion  :integer
#  votacion_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ResultadoPoliticos < ActiveRecord::Base
  attr_accessible :aFavor, :abstencion, :enContra, :numNoVotan, :numVotan
  
  belongs_to :votacion, :inverse_of => :resultadoPoliticos, :dependent => :destroy
end
