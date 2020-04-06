class ChangeAddress < ActiveRecord::Migration[6.0]
  def change
    rename_column :addresses, :address, :state
  end
end
