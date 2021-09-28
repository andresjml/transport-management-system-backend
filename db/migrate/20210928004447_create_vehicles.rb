class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.string :type
      t.integer :capacity
      t.references :transport_company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
