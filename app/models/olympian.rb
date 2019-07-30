class Olympian < ApplicationRecord

  def self.olympians
    list = self.select(:name, :age, :team, :sport).distinct.map do |olymp|
      Olympians.new(olymp)
    end
    return list
  end
end
