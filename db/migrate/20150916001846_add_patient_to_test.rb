class AddPatientToTest < ActiveRecord::Migration
  def change
    add_reference :tests, :patient, index: true
  end
end
