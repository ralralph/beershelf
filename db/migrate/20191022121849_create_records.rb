class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.integer :feeling, null: false
      t.integer :serving_style, null: false
      t.string :location
      t.references :tast, foreign_key: true

      t.timestamps
    end
  end
end
