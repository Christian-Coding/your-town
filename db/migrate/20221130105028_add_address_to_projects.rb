class AddAddressToProjects < ActiveRecord::Migration[7.0]
  def change
    rename_column :projects, :location, :address
  end
end
