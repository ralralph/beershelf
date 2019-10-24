class RenameFromBreweriesToBrewery < ActiveRecord::Migration[5.2]
  def change
    rename_column :beers, :breweries_id, :brewery_id
  end
end
