class Olympians
  attr_reader :id,
              :name,
              :team,
              :age,
              :sport,
              :total_medals_won

  def initialize(argument)
    @name = argument.name
    @team = argument.team
    @age  = argument.age
    @sport = argument.sport
    @total_medals_won = total_medals_won(argument)
  end

  def total_medals_won(olympian)
    Olympian.where({name: olympian.name}).where.not({medal: "NA"}).count
  end
end
