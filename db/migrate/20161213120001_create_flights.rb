class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.text :flight_num
      t.text :origin
      t.text :destination
      t.datetime :flight_datetime
      t.integer :airplane_id

      t.timestamps null: false
    end
  end
end
