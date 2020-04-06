class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string :city_name
      t.integer :state_id

      t.timestamps
    end
    add_index :cities, :state_id
  end
end
