class AddAddressToCities < ActiveRecord::Migration[7.0]
  def change
    add_column :cities, :address, :string
  end
end
