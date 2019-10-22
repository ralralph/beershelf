class CreateBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :beers do |t|
      t.string :name
      t.integer :volume
      t.string :detail
      t.string :image

      t.timestamps
    end
  end
end
