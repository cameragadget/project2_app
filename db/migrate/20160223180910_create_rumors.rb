class CreateRumors < ActiveRecord::Migration
  def change
    create_table :rumors do |t|
      t.string :title
      t.string :body_text
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
