class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :first_name
      t.text :last_name
      t.text :username
      t.text :email
      t.text :password_digest

      t.timestamps null: false
    end
  end
end
