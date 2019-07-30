require "rails_helper"

describe 'Olympians API Request', type: :request  do
  before :each do
    oly2 = create(:olympian, age: 13, sex: 'M', weight: 120)
    oly3 = create(:olympian, age: 27, sex: 'M', weight: 210)
    oly4 = create(:olympian, age: 29, sex: 'M', weight: 130)
    oly5 = create(:olympian, age: 30, sex: 'M', weight: 77)
    oly6 = create(:olympian, age: 40, sex: 'M', weight: 60)
    oly6 = create(:olympian, age: 35, sex: 'M', weight: 95)
    oly7 = create(:olympian, age: 18, sex: 'F', weight: 60)
    oly8 = create(:olympian, age: 35, sex: 'F', weight: 75)
    oly9 = create(:olympian, age: 21, sex: 'F', weight: 87)
    oly10 = create(:olympian, age: 16, sex: 'F', weight: 78)
    oly11 = create(:olympian, age: 17, sex: 'F', weight: 126)
    oly12 = create(:olympian, age: 27, sex: 'F', weight: 213)
    oly13 = create(:olympian, age: 29, sex: 'F', weight: 103)
    oly14 = create(:olympian, age: 40, sex: 'F', weight: 123)
    oly15 = create(:olympian, age: 24, sex: 'F', weight: 154)
  end

  it "in the list of JSON objects I see each objects attributes" do
    get '/api/v1/olympian_stats'

    expect(response).to be_successful

    olympian = JSON.parse(response.body)['olympian_stats']

    expect(olympian['total_competing_olympians']).to eq(15)
    expect(olympian['average_weight']['unit']).to eq('kg')
    expect(olympian['average_weight']['male_olympians']).to eq(115.3)
    expect(olympian['average_weight']['female_olympians']).to eq(113.2)
    expect(olympian['average_age']).to eq(26.7)
  end
end
