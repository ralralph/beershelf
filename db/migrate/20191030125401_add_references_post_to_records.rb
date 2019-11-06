class AddReferencesPostToRecords < ActiveRecord::Migration[5.2]
  def change
    add_reference :records, :post, foreign_key: true, index: true
  end
end
