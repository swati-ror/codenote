class CreateAttendences < ActiveRecord::Migration[6.0]
  def change
    create_table :attendences do |t|
      t.date :current_date, :null => false, :default => Date.today
      t.time :in_time
      t.time :out_time
      t.time :break

      t.timestamps
    end
  end
end
