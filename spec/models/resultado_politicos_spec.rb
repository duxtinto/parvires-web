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

require 'spec_helper'

describe ResultadoPoliticos do
  pending "add some examples to (or delete) #{__FILE__}"
end
