class Olympian < ApplicationRecord

  def self.olympians
    list = self.select(:name, :age, :team, :sport).distinct.map do |olymp|
      Olympians.new(olymp)
    end
    return list
  end

  def self.youngest
   [ Olympians.new(self.order(:age).limit(5).first) ] 
  end
end
