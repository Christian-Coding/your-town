class RemoveforiegKeyFromProjects < ActiveRecord::Migration[7.0]
  def change
    remove_reference :projects, :city
  end
end
