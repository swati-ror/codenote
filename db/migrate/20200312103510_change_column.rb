class ChangeColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :attendences, :break, :integer
  end
end
