# == Schema Information
#
# Table name: diagnostic_types
#
#  id         :integer          not null, primary key
#  code       :string(255)
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class DiagnosticTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
