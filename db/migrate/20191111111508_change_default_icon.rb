class ChangeDefaultIcon < ActiveRecord::Migration[5.2]
  def change
      change_column_default :users, :icon, nil
  end
end