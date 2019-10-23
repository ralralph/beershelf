class RemoveForeignKeyFromBreweries < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :breweries, column: :beer_id
  end
end
