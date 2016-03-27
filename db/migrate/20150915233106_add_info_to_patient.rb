class AddInfoToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :essalud, :boolean
    add_column :patients, :eps, :boolean
    add_column :patients, :sctr, :boolean
    add_column :patients, :other_secure, :string
    add_column :patients, :email, :string
    add_column :patients, :number_of_children, :integer
    add_column :patients, :dependents, :integer
    add_column :patients, :educational_attainment, :string
  end
end
