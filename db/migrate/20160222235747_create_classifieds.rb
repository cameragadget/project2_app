class CreateClassifieds < ActiveRecord::Migration
  def change
    create_table :classifieds do |t|
      t.string :post_type
      t.string :machine_name
      t.text :body_text
      t.string :location
      t.string :condition
      t.integer :price
      t.string :email
      t.string :photo_one_url
      t.string :photo_two_url
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
