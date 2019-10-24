class DropBeerCategories < ActiveRecord::Migration[5.2]
  def change
    drop_table :beer_categories do |t|
      t.references :beer, foreign_key: true
      t.references :category, foreign_key: true
      t.timestamps
    end
  end
end
