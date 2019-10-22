class CreateBreweries < ActiveRecord::Migration[5.2]
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :country
      t.string :image
      t.string :detail
      t.references :beer, foreign_key: true

      t.timestamps
    end
  end
end
