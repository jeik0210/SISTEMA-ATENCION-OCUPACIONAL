class AddOsdToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :name, :string
    add_column :patients, :paternal, :string
    add_column :patients, :maternal, :string
  end
end
