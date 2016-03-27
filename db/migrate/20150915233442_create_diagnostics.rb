class CreateDiagnostics < ActiveRecord::Migration
  def change
    create_table :diagnostics do |t|
      t.references :diagnostic_type, index: true
      t.references :diagnostic_cie, index: true
      t.references :test, index: true

      t.timestamps
    end
  end
end
