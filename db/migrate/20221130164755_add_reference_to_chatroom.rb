class AddReferenceToChatroom < ActiveRecord::Migration[7.0]
  def change
    change_table :chatrooms do |t|
      t.references :project, null: false, foreign_key: true
    end
  end
end
