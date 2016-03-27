class TestsController < ApplicationController

    def show
        @test = Test.find(params[:test_id])
    end

    def create
        patient = Patient.find(params[:patient_id])
        test = patient.@test.create
        respond_to do |format|
            format.html { redirect_to show_test_path(patient_id: @test.patient.id, test_id: @test.id) }
        end
    end

    def create_business
        test = Test.find(params[:test_id])
        @business = Business.create(name: params[:name])
        respond_to do |format|
            format.html { redirect_to show_test_path(patient_id: @test.patient.id, test_id: @test.id) }
            format.js
        end
    end
    
    def export
        @test = Test.find(params[:test_id])
    end

    def hash_valor

    end

    def update
        @test = Test.find(params[:test_id])

        # Empieza guardado de datos

        @test.date = params[:date]
        @test.department = params[:department]
        @test.province = params[:province]
        @test.distrite = params[:distrite]
        @test.job = params[:job]
        @test.area = params[:area]
        @test.job_time = params[:job_time]
        @test.risk_factor_initial = params[:risk_factor_initial]
        @test.risk_factor_final = params[:risk_factor_final]
        @test.epp = params[:epp]
        @test.ciu88 = params[:ciu88]
        @test.matrix_code = params[:matrix_code]
        @test.type_test_id = params[:type_test_id]
        @test.allergies = params[:allergies]
        @test.asthma = params[:asthma]
        @test.bronchitis = params[:bronchitis]
        @test.diabetes = params[:diabetes]
        @test.hta = params[:hta]    
        @test.neoplasia = params[:neoplasia]
        @test.tbc = params[:tbc]
        @test.its = params[:its]
        @test.seizures = params[:seizures]
        @test.hepatitis = params[:hepatitis]
        @test.typhoid = params[:typhoid]
        @test.burns = params[:burns]
        @test.surgery = params[:surgery]
        @test.intoxication = params[:intoxication]
        @test.other_personal_pathological = params[:other_personal_pathological]
        @test.alcohol_type = params[:alcohol_type]
        @test.smoke_type = params[:smoke_type]
        @test.drugs_type = params[:drugs_type]
        @test.medicines_type = params[:medicines_type]
        @test.alcohol_quantity = params[:alcohol_quantity]
        @test.smoke_quantity = params[:smoke_quantity]
        @test.drugs_quantity = params[:drugs_quantity]
        @test.medicines_quantity = params[:medicines_quantity]
        @test.alcohol_frequency = params[:alcohol_frequency]
        @test.smoke_frequency = params[:smoke_frequency]
        @test.drugs_frequency = params[:drugs_frequency]
        @test.medicines_frequency = params[:medicines_frequency]
        @test.for_father = params[:for_father]
        @test.for_mother = params[:for_mother]
        @test.for_brothers = params[:for_brothers]
        @test.for_husband = params[:for_husband]
        @test.live_childrens = params[:live_childrens]
        @test.dead_childrens = params[:dead_childrens]
        @test.absenteeism = params[:absenteeism]
        @test.anamnesis_history = params[:anamnesis_history]
        @test.height = params[:height]
        @test.weight = params[:weight]
        @test.imc = params[:imc]
        @test.abdominal_perimeter = params[:abdominal_perimeter]
        @test.f_respiratory = params[:f_respiratory]
        @test.f_cardiovascular = params[:f_cardiovascular]
        @test.pa = params[:pa]
        @test.pa_med = params[:pa_med]
        @test.other_medical_evaluation = params[:other_medical_evaluation]
        @test.ectoscopia = params[:ectoscopia]
        @test.mental_status = params[:mental_status]
        @test.skin = params[:skin]
        @test.hair = params[:hair]
        @test.visual_acuity_right = params[:visual_acuity_right]
        @test.visual_acuity_left = params[:visual_acuity_left]
        @test.with_corrective_right = params[:with_corrective_right]
        @test.with_corrective_left = params[:with_corrective_left]
        @test.fundus_oculus = params[:fundus_oculus]
        @test.color_vision = params[:color_vision]
        @test.depth_view = params[:depth_view]
        @test.ears = params[:ears]
        @test.nose = params[:nose]
        @test.mouth = params[:mouth]
        @test.pharynx = params[:pharynx]
        @test.neck = params[:neck]
        @test.apparatus_respiratory = params[:apparatus_respiratory]
        @test.apparatus_cardiovascular = params[:apparatus_cardiovascular]
        @test.apparatus_digestive = params[:apparatus_digestive]
        @test.apparatus_genitourinary = params[:apparatus_genitourinary]
        @test.apparatus_locomotor = params[:apparatus_locomotor]
        @test.motion = params[:motion]
        @test.column = params[:column]
        @test.upper_limbs = params[:upper_limbs]
        @test.lower_limbs = params[:lower_limbs]
        @test.lymphatic_system = params[:lymphatic_system]
        @test.nervous_system = params[:nervous_system]
        @test.completion_psychological = params[:completion_psychological]
        @test.completion_radiographic  = params[:completion_radiographic]
        @test.completion_pathologic = params[:completion_pathologic]
        @test.pathological_finding = params[:pathological_finding]
        @test.completion_audiometry = params[:completion_audiometry]
        @test.completion_spirometry = params[:completion_spirometry]
        @test.other_general = params[:other_general]
        @test.recomendations = params[:recomendations]
        @test.result_type_id = params[:result_type_id]

        #Termina guardado de datos

        @test.save
        respond_to do |format|
            format.html { redirect_to show_test_path(patient_id: @test.patient.id, test_id: @test.id) }
        end
    end
end
