# == Schema Information
#
# Table name: tests
#
#  id                          :integer          not null, primary key
#  date                        :date
#  department                  :string(255)
#  province                    :string(255)
#  distrite                    :string(255)
#  job                         :string(255)
#  area                        :string(255)
#  job_time                    :integer
#  risk_factor_initial         :float(24)
#  risk_factor_final           :float(24)
#  epp                         :boolean
#  ciu88                       :string(255)
#  matrix_code                 :string(255)
#  type_test_id                :integer
#  allergies                   :string(255)
#  asthma                      :boolean
#  bronchitis                  :boolean
#  diabetes                    :boolean
#  hta                         :boolean
#  neoplasia                   :boolean
#  tbc                         :boolean
#  its                         :boolean
#  seizures                    :boolean
#  hepatitis                   :boolean
#  typhoid                     :boolean
#  burns                       :string(255)
#  surgery                     :string(255)
#  intoxication                :string(255)
#  other_personal_pathological :string(255)
#  alcohol_type                :string(255)
#  smoke_type                  :string(255)
#  drugs_type                  :string(255)
#  medicines_type              :string(255)
#  alcohol_quantity            :string(255)
#  smoke_quantity              :string(255)
#  drugs_quantity              :string(255)
#  medicines_quantity          :string(255)
#  alcohol_frequency           :string(255)
#  smoke_frequency             :string(255)
#  drugs_frequency             :string(255)
#  medicines_frequency         :string(255)
#  for_father                  :string(255)
#  for_mother                  :string(255)
#  for_brothers                :string(255)
#  for_husband                 :string(255)
#  live_childrens              :integer
#  dead_childrens              :integer
#  absenteeism                 :string(255)
#  anamnesis_history           :string(255)
#  height                      :string(255)
#  weight                      :string(255)
#  imc                         :string(255)
#  abdominal_perimeter         :string(255)
#  f_respiratory               :string(255)
#  f_cardiovascular            :string(255)
#  pa                          :string(255)
#  pa_med                      :string(255)
#  other_medical_evaluation    :string(255)
#  ectoscopia                  :string(255)
#  mental_status               :string(255)
#  skin                        :string(255)
#  hair                        :string(255)
#  visual_acuity_right         :string(255)
#  visual_acuity_left          :string(255)
#  with_corrective_right       :string(255)
#  with_corrective_left        :string(255)
#  fundus_oculus               :string(255)
#  color_vision                :string(255)
#  depth_view                  :string(255)
#  ears                        :string(255)
#  nose                        :string(255)
#  mouth                       :string(255)
#  pharynx                     :string(255)
#  neck                        :string(255)
#  apparatus_respiratory       :string(255)
#  apparatus_cardiovascular    :string(255)
#  apparatus_digestive         :string(255)
#  apparatus_genitourinary     :string(255)
#  apparatus_locomotor         :string(255)
#  motion                      :string(255)
#  column                      :string(255)
#  upper_limbs                 :string(255)
#  lower_limbs                 :string(255)
#  lymphatic_system            :string(255)
#  nervous_system              :string(255)
#  completion_psychological    :string(255)
#  completion_radiographic     :string(255)
#  completion_pathologic       :string(255)
#  pathological_finding        :string(255)
#  completion_audiometry       :string(255)
#  completion_spirometry       :string(255)
#  other_general               :string(255)
#  recomendations              :string(255)
#  result_type_id              :integer
#  created_at                  :datetime
#  updated_at                  :datetime
#  patient_id                  :integer
#

class Test < ActiveRecord::Base
	belongs_to :type_test
	belongs_to :result_type
	belongs_to :patient

	has_many :diagnostics

	after_create :create_diagnostics

	def create_diagnostics
		6.times do self.diagnostics.create end
	end
end
