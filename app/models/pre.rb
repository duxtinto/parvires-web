# == Schema Information
#
# Table name: pres
#
#  id         :integer          not null, primary key
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Pre < ActiveRecord::Base
  attr_accessible :email
end
