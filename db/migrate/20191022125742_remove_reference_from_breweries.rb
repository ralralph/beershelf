class RemoveReferenceFromBreweries < ActiveRecord::Migration[5.2]
  def change
    remove_reference :breweries, :beer, index: true
  end
end
