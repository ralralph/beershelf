class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :content
      t.string :photo
      t.references :user, foreign_key: true
      t.references :beer, foreign_key: true
      t.references :record, foreign_key: true

      t.timestamps
    end
  end
end
