require "rails_helper"

describe 'Olympians API Request', type: :request  do
  before :each do
    oly2 = create(:olympian, age: 41)
    oly3 = create(:olympian, age: 32)
    @oly1 = create(:olympian, name: "joe", team: "the best", age: 15, sport: "Swimming", event: "swimming 100",  medal: "NA")
    oly4 = create(:olympian, age: 23)
  end

  it "sends a JSON of Olympians that fit the youngest age" do
    get '/api/v1/olympians?age=youngest'

    expect(response).to be_successful

    olympians = JSON.parse(response.body)
    expect(olympians.count).to eq(1)
  end

  it "in the list of JSON objects I see each objects attributes" do
    get '/api/v1/olympians?age=youngest'

    expect(response).to be_successful

    olympian = JSON.parse(response.body)[0]

    expect(olympian['name']).to eq(@oly1.name)
    expect(olympian['team']).to eq(@oly1.team)
    expect(olympian['age']).to eq(@oly1.age)
    expect(olympian['sport']).to eq(@oly1.sport)
    expect(olympian['total_medals_won']).to eq(0)
  end
end
