class AddReferencesRecordToTasts < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasts, :record, foreign_key: true, index: true
  end
end
