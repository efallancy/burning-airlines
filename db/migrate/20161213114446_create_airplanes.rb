class CreateAirplanes < ActiveRecord::Migration
  def change
    create_table :airplanes do |t|
      t.text :name
      t.integer :rows
      t.integer :columns

      t.timestamps null: false
    end
  end
end
