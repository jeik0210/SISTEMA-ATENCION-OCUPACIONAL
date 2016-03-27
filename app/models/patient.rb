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

class Patient < ActiveRecord::Base
	has_many :tests, dependent: :destroy
	before_save :up_full_name

	self.per_page = 20

	validates :name, :paternal, :maternal, :dni, :date_of_birth, :medical_record, presence: {message: 'No puede estar en blanco'}
	validates :sex, inclusion: { in: [true, false], message: 'tiene valores no aceptables.' }
	validates :dni, :medical_record, numericality: {message: 'no es un número'}
	validates :dni, uniqueness: { message: 'ya existe.'}
	validates :dni, length: { is: 8, message: 'tiene numero errado de carácteres.' }
	validates :medical_record, length: { maximum: 10, message: 'tiene numero errado de carácteres.' }

	def full_name
		paternal.to_s + " " + maternal.to_s + " " + name.to_s
	end

	def full_direction
		department.to_s + " - " + province.to_s + " - " + distrite.to_s + " - " + urbanization
	end

	def up_full_name
		self.name = self.name.upcase
		self.paternal = self.paternal.upcase
		self.maternal = self.maternal.upcase
	end

	def age
		unless self.date_of_birth.nil?
			now = Time.now.utc.to_date
			now.year - self.date_of_birth.year - (self.date_of_birth.to_date.change(:year => now.year) > now ? 1 : 0)
		end
	end
end
