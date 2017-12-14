class CreateCitiesTemperatures < ActiveRecord::Migration[5.1]
  def change
    create_table :cities_temperatures do |t|
      t.string :name
      t.string :hour
      t.integer :temperature

      t.timestamps
    end
  end
end
