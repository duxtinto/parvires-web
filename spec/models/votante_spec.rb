# == Schema Information
#
# Table name: votantes
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  apellidos  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

require 'spec_helper'

describe Votante do
  pending "add some examples to (or delete) #{__FILE__}"
end
