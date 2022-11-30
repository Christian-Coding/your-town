class AddAddressToProjects < ActiveRecord::Migration[7.0]
  def change
    rename_column :projects, :location, :address
    add_column :projects, :latitude, :float
    add_column :projects, :longitude, :float
  end
end
