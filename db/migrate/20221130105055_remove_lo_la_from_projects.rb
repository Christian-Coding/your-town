class RemoveLoLaFromProjects < ActiveRecord::Migration[7.0]
  def change
    remove_column :cities, :latitude
    remove_column :cities, :longitude
  end
end
