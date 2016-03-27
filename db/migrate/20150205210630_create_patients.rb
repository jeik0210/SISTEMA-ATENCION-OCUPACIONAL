class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :dni
      t.date :date_of_birth
      t.boolean :sex
      t.string :medical_record
      t.string :home
      t.string :place_of_birth
      t.string :phone

      t.timestamps
    end
  end
end
