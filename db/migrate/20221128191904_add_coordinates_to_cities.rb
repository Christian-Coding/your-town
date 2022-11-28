class AddCoordinatesToCities < ActiveRecord::Migration[7.0]
  def change
    add_column :cities, :latitude, :float
    add_column :cities, :longitude, :float
  end
end
