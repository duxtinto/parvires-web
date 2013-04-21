# == Schema Information
#
# Table name: sesiones
#
#  id             :integer          not null, primary key
#  ref            :string(255)
#  titulo         :string(255)
#  descripcion    :text
#  fecha          :date
#  legislatura_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'spec_helper'

describe Sesion do
  pending "add some examples to (or delete) #{__FILE__}"
end
