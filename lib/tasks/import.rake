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
end
