namespace :import do
  desc 'Import Olympians from CSV File'
  task olympians: :environment do
    require 'csv'
    count = 0
    CSV.foreach('./db/data/olympians.csv', headers: true) do |row|
      Olympian.create(row.to_h)
      count +=1
    end
    puts "#{count} Olympians imported!"
  end

  task events: :environment do
    a = Olympian.select(:sport, :event).order(:sport,:event).distinct
    events = {} # Keeps track for import iteration
    event_count = 0
    sport_count = 0
    a.each do |s|
      if events.has_key?(s.sport)
        events[s.sport].push(s.event)
        Event.create(name: s.event, sport_id: Sport.last.id)
        event_count += 1
      else
        events[s.sport] = [s.event]
        Sport.create(name: s.sport)
        Event.create(name: s.event, sport_id: Sport.last.id)
        sport_count += 1
        event_count += 1
      end
    end
    puts "#{sport_count} Sports and #{event_count} Events imported!"
  end

  task :all => [:olympians,:events]
end
