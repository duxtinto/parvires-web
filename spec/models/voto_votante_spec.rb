# == Schema Information
#
# Table name: voto_votantes
#
#  id              :integer          not null, primary key
#  voto            :string(255)
#  fecha           :date
#  votante_id      :integer
#  votacion_web_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'spec_helper'

describe VotoVotante do
  pending "add some examples to (or delete) #{__FILE__}"
end
