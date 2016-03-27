# == Schema Information
#
# Table name: diagnostic_cies
#
#  id         :integer          not null, primary key
#  code       :string(255)
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class DiagnosticCie < ActiveRecord::Base
end
