class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
      t.string :social
      t.string :activity
      t.string :ciiu
      t.string :ruc
      t.string :street
      t.string :department
      t.string :urbanization
      t.string :distrite
      t.string :province
      t.string :doctor_name
      t.string :doctor_dni

      t.timestamps
    end
  end
end
