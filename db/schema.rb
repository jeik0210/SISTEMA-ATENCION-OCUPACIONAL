# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150916001846) do

  create_table "businesses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clinics", force: true do |t|
    t.string   "social"
    t.string   "activity"
    t.string   "ciiu"
    t.string   "ruc"
    t.string   "street"
    t.string   "department"
    t.string   "urbanization"
    t.string   "distrite"
    t.string   "province"
    t.string   "doctor_name"
    t.string   "doctor_dni"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diagnostic_cies", force: true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diagnostic_types", force: true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diagnostics", force: true do |t|
    t.integer  "diagnostic_type_id"
    t.integer  "diagnostic_cie_id"
    t.integer  "test_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "diagnostics", ["diagnostic_cie_id"], name: "index_diagnostics_on_diagnostic_cie_id", using: :btree
  add_index "diagnostics", ["diagnostic_type_id"], name: "index_diagnostics_on_diagnostic_type_id", using: :btree
  add_index "diagnostics", ["test_id"], name: "index_diagnostics_on_test_id", using: :btree

  create_table "election_workspaces", force: true do |t|
    t.integer  "workspace_id"
    t.integer  "test_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "election_workspaces", ["test_id"], name: "index_election_workspaces_on_test_id", using: :btree
  add_index "election_workspaces", ["workspace_id"], name: "index_election_workspaces_on_workspace_id", using: :btree

  create_table "employees", force: true do |t|
    t.string   "name"
    t.string   "paternal"
    t.string   "maternal"
    t.string   "username"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exposure_choices", force: true do |t|
    t.integer  "exposure_id"
    t.integer  "test_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "exposure_choices", ["exposure_id"], name: "index_exposure_choices_on_exposure_id", using: :btree
  add_index "exposure_choices", ["test_id"], name: "index_exposure_choices_on_test_id", using: :btree

  create_table "exposures", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", force: true do |t|
    t.string   "dni"
    t.date     "date_of_birth"
    t.boolean  "sex"
    t.string   "medical_record"
    t.string   "home"
    t.string   "place_of_birth"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "paternal"
    t.string   "maternal"
    t.string   "street"
    t.string   "department"
    t.string   "urbanization"
    t.string   "distrite"
    t.string   "province"
    t.boolean  "essalud"
    t.boolean  "eps"
    t.boolean  "sctr"
    t.string   "other_secure"
    t.string   "email"
    t.integer  "number_of_children"
    t.integer  "dependents"
    t.string   "educational_attainment"
  end

  create_table "result_types", force: true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tests", force: true do |t|
    t.date     "date"
    t.string   "department"
    t.string   "province"
    t.string   "distrite"
    t.string   "job"
    t.string   "area"
    t.integer  "job_time"
    t.float    "risk_factor_initial",         limit: 24
    t.float    "risk_factor_final",           limit: 24
    t.boolean  "epp"
    t.string   "ciu88"
    t.string   "matrix_code"
    t.integer  "type_test_id"
    t.string   "allergies"
    t.boolean  "asthma"
    t.boolean  "bronchitis"
    t.boolean  "diabetes"
    t.boolean  "hta"
    t.boolean  "neoplasia"
    t.boolean  "tbc"
    t.boolean  "its"
    t.boolean  "seizures"
    t.boolean  "hepatitis"
    t.boolean  "typhoid"
    t.string   "burns"
    t.string   "surgery"
    t.string   "intoxication"
    t.string   "other_personal_pathological"
    t.string   "alcohol_type"
    t.string   "smoke_type"
    t.string   "drugs_type"
    t.string   "medicines_type"
    t.string   "alcohol_quantity"
    t.string   "smoke_quantity"
    t.string   "drugs_quantity"
    t.string   "medicines_quantity"
    t.string   "alcohol_frequency"
    t.string   "smoke_frequency"
    t.string   "drugs_frequency"
    t.string   "medicines_frequency"
    t.string   "for_father"
    t.string   "for_mother"
    t.string   "for_brothers"
    t.string   "for_husband"
    t.integer  "live_childrens"
    t.integer  "dead_childrens"
    t.string   "absenteeism"
    t.string   "anamnesis_history"
    t.string   "height"
    t.string   "weight"
    t.string   "imc"
    t.string   "abdominal_perimeter"
    t.string   "f_respiratory"
    t.string   "f_cardiovascular"
    t.string   "pa"
    t.string   "pa_med"
    t.string   "other_medical_evaluation"
    t.string   "ectoscopia"
    t.string   "mental_status"
    t.string   "skin"
    t.string   "hair"
    t.string   "visual_acuity_right"
    t.string   "visual_acuity_left"
    t.string   "with_corrective_right"
    t.string   "with_corrective_left"
    t.string   "fundus_oculus"
    t.string   "color_vision"
    t.string   "depth_view"
    t.string   "ears"
    t.string   "nose"
    t.string   "mouth"
    t.string   "pharynx"
    t.string   "neck"
    t.string   "apparatus_respiratory"
    t.string   "apparatus_cardiovascular"
    t.string   "apparatus_digestive"
    t.string   "apparatus_genitourinary"
    t.string   "apparatus_locomotor"
    t.string   "motion"
    t.string   "column"
    t.string   "upper_limbs"
    t.string   "lower_limbs"
    t.string   "lymphatic_system"
    t.string   "nervous_system"
    t.string   "completion_psychological"
    t.string   "completion_radiographic"
    t.string   "completion_pathologic"
    t.string   "pathological_finding"
    t.string   "completion_audiometry"
    t.string   "completion_spirometry"
    t.string   "other_general"
    t.string   "recomendations"
    t.integer  "result_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "patient_id"
  end

  add_index "tests", ["patient_id"], name: "index_tests_on_patient_id", using: :btree
  add_index "tests", ["result_type_id"], name: "index_tests_on_result_type_id", using: :btree
  add_index "tests", ["type_test_id"], name: "index_tests_on_type_test_id", using: :btree

  create_table "type_tests", force: true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
