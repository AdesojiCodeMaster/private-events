require 'rails_helper'

RSpec.describe EventAttendance, type: :model do
  describe 'Create new eventattendance' do
    u = User.new
    u.save
    e = Event.new(creator: u)
    e.save
    it 'Should work for everything is set correctly' do
      a = EventAttendance.new(event_id: 1, attended_event_id: 1, attendee_id: 1)
      expect(a.valid?).to eql(true)
    end
    it "Should work for it doesn't have an event creator" do
      a = EventAttendance.new(event_id: 1)
      expect(a.valid?).to eql(false)
    end
    it "Should work for it doesn't attend an event" do
      a = EventAttendance.new(attended_event_id: 1)
      expect(a.valid?).to eql(false)
    end

    it "Should work for it doesn't have an event" do
      a = EventAttendance.new(attendee_id: 1)
      expect(a.valid?).to eql(false)
    end
  end
end
