class RenameStateAndCity < ActiveRecord::Migration[6.0]
  def change
    rename_column :addresses, :state, :state_id
    rename_column :addresses, :city, :city_id
  end
end
