class RemoveReferenceBeerFromCategories < ActiveRecord::Migration[5.2]
  def change
    remove_reference :categories, :beers, foreign_key: true, index: true
  end
end
