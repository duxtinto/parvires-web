# == Schema Information
#
# Table name: votaciones
#
#  id            :integer          not null, primary key
#  ref           :string(255)
#  titulo        :string(255)
#  descripcion   :text
#  fecha         :date
#  sesion_id     :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  enabled       :boolean          default(TRUE)
#  frontpage     :boolean          default(FALSE)
#  iniciativa_id :integer
#

require 'spec_helper'

describe Votacion do
  pending "add some examples to (or delete) #{__FILE__}"
end
