class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :name, limit: 100
      t.string :model, limit: 150
      t.integer :year

      t.timestamps
    end
  end
end
