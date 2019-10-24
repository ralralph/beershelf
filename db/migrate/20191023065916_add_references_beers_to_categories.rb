class AddReferencesBeersToCategories < ActiveRecord::Migration[5.2]
  def change
    add_reference :categories, :beers, foreign_key: true
  end
end
