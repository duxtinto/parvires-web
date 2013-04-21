# == Schema Information
#
# Table name: voto_politicos
#
#  id          :integer          not null, primary key
#  voto        :string(255)
#  politico_id :integer
#  votacion_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe VotoPolitico do
  pending "add some examples to (or delete) #{__FILE__}"
end
