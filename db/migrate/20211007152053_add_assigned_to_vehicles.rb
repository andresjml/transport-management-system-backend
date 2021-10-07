class AddAssignedToVehicles < ActiveRecord::Migration[6.1]
  def change
    add_column :vehicles, :assigned, :boolean
  end
end
