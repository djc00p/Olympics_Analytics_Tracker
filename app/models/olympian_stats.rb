class OlympianStats
  attr_reader :id
  def initialize
    @id = 1
  end
  
  def total_competing_olympians
    Olympian.select(:name).distinct.count
  end

  def average_weight
    {
      unit: 'kg',
      male_olympians:  Olympian.where(sex: 'M').average(:weight).to_f.round(1),
      female_olympians: Olympian.where(sex: 'F').average(:weight).to_f.round(1)
    }
  end

  def average_age
    Olympian.average(:age).to_f.round(1)
  end
end
