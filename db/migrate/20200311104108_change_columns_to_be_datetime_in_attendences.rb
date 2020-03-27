class ChangeColumnsToBeDatetimeInAttendences < ActiveRecord::Migration[6.0]
  def change
    change_column :attendences, :in_time, :datetime
    change_column :attendences, :out_time, :datetime
    change_column :attendences, :break, :datetime
  end
end
