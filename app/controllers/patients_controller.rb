class PatientsController < ApplicationController
	before_action :set_patient, only: [:update, :delete]

	def index
		unless is_loged?
			redirect_to security_path
		end
		unless params[:paternal].nil?
			@patients = Patient.where('paternal like "%'+params[:paternal].to_s+'%" and maternal like "%'+params[:maternal].to_s+'%" and dni like "%'+params[:dni].to_s+'%" and medical_record like "%'+params[:medical_record].to_s+'%" ').paginate(page: params[:page])
		else
			@patients = Patient.all.paginate(page: params[:page])
		end
		@patient = Patient.new
	end

	def create
		@patient = Patient.new(patient_params)
		@patients = Patient.all.paginate(page: params[:page])
		@patient.save
		respond_to do |format|
			format.html { render text: params }
			format.js
		end
	end

	def update
		@patient.update(patient_params)
		@patients = Patient.all.paginate(page: params[:page])
		@patient.save
		respond_to do |format|
			format.html { render text: params }
			format.js
		end
	end

	def delete
		@patient.destroy
		@patients = Patient.all.paginate(page: params[:page])
		respond_to do |format|
			format.html { render text: params }
			format.js
		end
	end

	private

	def set_patient
		@patient = Patient.find(params[:patient_id])
	end

	def patient_params
		params.require(:patient).permit(:name, :paternal, :maternal, :dni, :email, :date_of_birth, :sex, :medical_record, :department, :province, :distrite, :urbanization, :place_of_birth, :phone)
	end
end
