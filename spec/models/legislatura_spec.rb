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

require 'spec_helper'

describe Legislatura do
  pending "add some examples to (or delete) #{__FILE__}"
end
