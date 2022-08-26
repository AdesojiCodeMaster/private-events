class AddIndexToEventAttendances < ActiveRecord::Migration[5.2]
  def change
    add_reference :event_attendances, :event, foreign_key: true
  end
end
