namespace :import do
  desc 'Import Olympians from CSV File'

  task olympian: :environment do
    require 'csv'
    count = 0
    CSV.foreach('./db/data/olympians.csv', headers: true) do |row|
      Olympian.create(row.to_h)
    end
  end
end
