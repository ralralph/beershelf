class AddForeignKeyToBeers < ActiveRecord::Migration[5.2]
  def change
    add_reference :beers, :breweries, foreign_key: true
  end
end
