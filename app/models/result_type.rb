# == Schema Information
#
# Table name: result_types
#
#  id         :integer          not null, primary key
#  code       :string(255)
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class ResultType < ActiveRecord::Base
end
