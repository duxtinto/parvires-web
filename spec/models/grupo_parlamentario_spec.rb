# == Schema Information
#
# Table name: grupo_parlamentarios
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  partido_id :integer
#  camara_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  ref        :string(255)
#

require 'spec_helper'

describe GrupoParlamentario do
  pending "add some examples to (or delete) #{__FILE__}"
end
