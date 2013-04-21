# == Schema Information
#
# Table name: legislatura_politicos
#
#  id                    :integer          not null, primary key
#  fechaAlta             :date
#  fechaBaja             :date
#  enActivo              :boolean
#  politico_id           :integer
#  legislatura_id        :integer
#  grupoParlamentario_id :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

require 'spec_helper'

describe LegislaturaPolitico do
  pending "add some examples to (or delete) #{__FILE__}"
end
