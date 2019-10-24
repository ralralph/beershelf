class AddReferenceCategoryToBeers < ActiveRecord::Migration[5.2]
  def change
    add_reference :beers, :category, foreign_key: true, index: true
  end
end
