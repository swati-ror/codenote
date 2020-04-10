class ChangeStringToBeIntegerInAddresses < ActiveRecord::Migration[6.0]
  def change
    change_column :addresses, :state_id, :integer
    change_column :addresses, :city_id, :integer  
  end
end