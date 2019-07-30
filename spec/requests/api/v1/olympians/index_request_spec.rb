require "rails_helper"

describe 'Olympians API Request', type: :request  do
  before :each do

    @oly1 = create(:olympian, name: "joe", team: "the best", age: 21, sport: "Swimming", event: "swimming 100",  medal: "NA")
    oly2 = create(:olympian)
    oly3 = create(:olympian)
    oly4 = create(:olympian)
    medal1 = create(:olympian, name: @oly1.name, team: @oly1.team, age: @oly1.age, sport: @oly1.sport, event: oly2.event,  medal: "Gold")
    medal2 = create(:olympian, name: @oly1.name, team: @oly1.team, age: @oly1.age, sport: @oly1.sport, event: oly3.event,  medal: "Silver")
    medal3 = create(:olympian, name: @oly1.name, team: @oly1.team, age: @oly1.age, sport: @oly1.sport, event: oly4.event,  medal: "Bronze")
  end

  it "sends a JSON list of Olympians" do
    get '/api/v1/olympians'

    expect(response).to be_successful

    olympians = JSON.parse(response.body)

    expect(olympians['olympians'].count).to eq(4)
  end

  it "in the list of JSON objects I see each objects attributes" do
    get '/api/v1/olympians'

    expect(response).to be_successful

    olympian = JSON.parse(response.body)['olympians'][0]

    expect(olympian['name']).to eq(@oly1.name)
    expect(olympian['team']).to eq(@oly1.team)
    expect(olympian['age']).to eq(@oly1.age)
    expect(olympian['sport']).to eq(@oly1.sport)
    expect(olympian['total_medals_won']).to eq(3)
  end
end
