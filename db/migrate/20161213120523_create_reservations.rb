class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.text :seat_row
      t.text :seat_column
      t.integer :flight_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
