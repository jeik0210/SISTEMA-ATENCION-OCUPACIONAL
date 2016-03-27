# == Schema Information
#
# Table name: diagnostics
#
#  id                 :integer          not null, primary key
#  diagnostic_type_id :integer
#  diagnostic_cie_id  :integer
#  test_id            :integer
#  created_at         :datetime
#  updated_at         :datetime
#

require 'test_helper'

class DiagnosticTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
