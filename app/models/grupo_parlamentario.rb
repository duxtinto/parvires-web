# == Schema Information
#
# Table name: grupo_parlamentarios
#
#  id          :integer          not null, primary key
#  nombre      :string(255)
#  partido_id  :integer
#  camara_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  ref         :string(255)
#  nombreCorto :string(255)
#

class GrupoParlamentario < ActiveRecord::Base
  attr_accessible :nombre
  
  belongs_to :partido, :inverse_of => :gruposParlamentarios
  belongs_to :camara, :inverse_of => :gruposParlamentarios
  has_many :legislaturasPoliticas, :inverse_of => :grupoParlamentario
  has_many :politicos, :through => :legislaturasPoliticos
  has_many :resultadoPoliticoGrupos, :inverse_of => :grupoParlamentario
end
