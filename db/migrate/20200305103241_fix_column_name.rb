class FixColumnName < ActiveRecord::Migration[6.0]
  def self.up
    rename_column :users, :password, :password_digest
  end

  def self.down
  
  end
end
