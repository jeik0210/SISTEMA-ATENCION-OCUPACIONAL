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

class Diagnostic < ActiveRecord::Base
  belongs_to :diagnostic_type
  belongs_to :diagnostic_cie
  belongs_to :test
end
