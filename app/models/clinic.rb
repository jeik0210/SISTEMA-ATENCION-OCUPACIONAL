# == Schema Information
#
# Table name: clinics
#
#  id           :integer          not null, primary key
#  social       :string(255)
#  activity     :string(255)
#  ciiu         :string(255)
#  ruc          :string(255)
#  street       :string(255)
#  department   :string(255)
#  urbanization :string(255)
#  distrite     :string(255)
#  province     :string(255)
#  doctor_name  :string(255)
#  doctor_dni   :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Clinic < ActiveRecord::Base
end
