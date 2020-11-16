class AddAttendColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :event_attendances, :attend, :boolean
  end
end
