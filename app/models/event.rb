class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :attended_events, through: :event_attendances, source: :attendee
  has_many :event_attendances, foreign_key: :attended_event_id

  scope :past_events, -> { where('date < ?', DateTime.now) }
  scope :upcoming_events, -> { where('date > ?', DateTime.now) }
end
