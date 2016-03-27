class AddFullDirectionToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :street, :string
    add_column :patients, :department, :string
    add_column :patients, :urbanization, :string
    add_column :patients, :distrite, :string
    add_column :patients, :province, :string
  end
end
