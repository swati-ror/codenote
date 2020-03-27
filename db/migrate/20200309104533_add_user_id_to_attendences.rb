class AddUserIdToAttendences < ActiveRecord::Migration[6.0]
  def change
    add_column :attendences, :user_id, :integer
  end
end
