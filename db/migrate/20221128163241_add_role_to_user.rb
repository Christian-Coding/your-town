class AddRoleToUser < ActiveRecord::Migration[7.0]
  def change
    change_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.string :role
    end
  end
end
