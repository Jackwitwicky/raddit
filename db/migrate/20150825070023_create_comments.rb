class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :user_id
      t.references :link, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
