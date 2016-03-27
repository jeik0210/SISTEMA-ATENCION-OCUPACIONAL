# == Schema Information
#
# Table name: type_tests
#
#  id         :integer          not null, primary key
#  code       :string(255)
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class TypeTest < ActiveRecord::Base
	has_many :tests
end
