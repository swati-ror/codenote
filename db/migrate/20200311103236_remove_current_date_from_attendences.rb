class RemoveCurrentDateFromAttendences < ActiveRecord::Migration[6.0]
  def change

    remove_column :attendences, :current_date, :date
  end
end
