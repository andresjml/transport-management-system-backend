class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.references :vehicle, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
