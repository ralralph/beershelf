class RemoveReferencesRecordFromRecord < ActiveRecord::Migration[5.2]
  def change
    remove_reference :posts, :record, foreign_key: true, index: true
  end
end
