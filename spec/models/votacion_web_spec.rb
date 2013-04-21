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

require 'spec_helper'

describe VotacionWeb do
  pending "add some examples to (or delete) #{__FILE__}"
end
