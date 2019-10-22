class CreateWishlists < ActiveRecord::Migration[5.2]
  def change
    create_table :wishlists do |t|
      t.boolean :complete
      t.references :user, foreign_key: true
      t.references :beer, foreign_key: true

      t.timestamps
    end
  end
end
