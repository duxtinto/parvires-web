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

class LegislaturaPolitico < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :legislatura, :inverse_of => :legislaturasPoliticos
  belongs_to :politico, :inverse_of => :legislaturasPoliticos  
  belongs_to :grupoParlamentario, :inverse_of => :legislaturasPoliticos
end
