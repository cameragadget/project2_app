class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :initials
      t.date :born_on
      t.string :email
      t.string :machines_owned
      t.boolean :admin
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
