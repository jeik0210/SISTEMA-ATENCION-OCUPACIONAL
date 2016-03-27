# == Schema Information
#
# Table name: patients
#
#  id                     :integer          not null, primary key
#  dni                    :string(255)
#  date_of_birth          :date
#  sex                    :boolean
#  medical_record         :string(255)
#  home                   :string(255)
#  place_of_birth         :string(255)
#  phone                  :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  name                   :string(255)
#  paternal               :string(255)
#  maternal               :string(255)
#  street                 :string(255)
#  department             :string(255)
#  urbanization           :string(255)
#  distrite               :string(255)
#  province               :string(255)
#  essalud                :boolean
#  eps                    :boolean
#  sctr                   :boolean
#  other_secure           :string(255)
#  email                  :string(255)
#  number_of_children     :integer
#  dependents             :integer
#  educational_attainment :string(255)
#

require 'test_helper'

class PatientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
