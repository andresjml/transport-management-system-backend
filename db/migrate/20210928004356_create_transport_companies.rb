class CreateTransportCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :transport_companies do |t|
      t.string :name

      t.timestamps
    end
  end
end
