require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'Create a new event' do
    c = User.new
    it 'Should work for all attributes have been filled' do
      e = Event.new(name: 'naming', description: 'Party', location: 'Colombia', date: Date.today, creator: c)
      expect(e.valid?).to eql(true)
    end

    it 'Should work for name is not necessary' do
      e = Event.new(description: 'Party', location: 'Colombia', date: Date.today, creator: c)
      expect(e.valid?).to eql(true)
    end

    it 'Should work for description is not necessary' do
      e = Event.new(name: 'naming', location: 'Colombia', date: Date.today, creator: c)
      expect(e.valid?).to eql(true)
    end

    it 'Should work for location is not necessary' do
      e = Event.new(name: 'naming', description: 'Party', date: Date.today, creator: c)
      expect(e.valid?).to eql(true)
    end

    it 'Should work for date is not necessary' do
      e = Event.new(name: 'naming', description: 'Party', location: 'Colombia', creator: c)
      expect(e.valid?).to eql(true)
    end

    it 'Should not work, for creator is necessary' do
      e = Event.new(name: 'naming', description: 'Party', location: 'Colombia', date: Date.today)
      expect(e.valid?).to eql(false)
    end
  end
end
