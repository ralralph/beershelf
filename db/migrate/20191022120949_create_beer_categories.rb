class CreateBeerCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :beer_categories do |t|
      t.references :beer, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
