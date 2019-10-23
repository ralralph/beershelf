class RemoveReferencesFromRecords < ActiveRecord::Migration[5.2]
  def change
    remove_reference :records, :tast, index: true, foreign_key: true
  end
end
