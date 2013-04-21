# == Schema Information
#
# Table name: iniciativas
#
#  id             :integer          not null, primary key
#  titulo         :string(255)
#  url            :string(500)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  legislatura_id :integer
#

require 'spec_helper'

describe Iniciativa do
  pending "add some examples to (or delete) #{__FILE__}"
end
