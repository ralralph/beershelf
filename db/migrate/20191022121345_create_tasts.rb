class CreateTasts < ActiveRecord::Migration[5.2]
  def change
    create_table :tasts do |t|
      t.integer :bitterness, null: false, default: "3"
      t.integer :sweetness, null: false, default: "3"
      t.integer :sourness, null: false, default: "3"
      t.integer :flavor, null: false, default: "3"

      t.timestamps
    end
  end
end
