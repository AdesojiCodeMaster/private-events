json.extract! event_attendance, :id, :attendee_id, :attended_event_id, :status, :created_at, :updated_at
json.url event_attendance_url(event_attendance, format: :json)
