# == Schema Information
#
# Table name: resultado_politico_grupos
#
#  id                    :integer          not null, primary key
#  votacion_id           :integer
#  grupoParlamentario_id :integer
#  votos                 :text                                   # JSON Encoded field
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

require 'spec_helper'

describe ResultadoPoliticoGrupo do
  pending "add some examples to (or delete) #{__FILE__}"
end
