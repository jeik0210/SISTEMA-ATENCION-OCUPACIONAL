class CreateDiagnosticCies < ActiveRecord::Migration
  def change
    create_table :diagnostic_cies do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
