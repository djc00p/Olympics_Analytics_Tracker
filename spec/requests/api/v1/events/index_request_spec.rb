require "rails_helper"

describe 'Events Api', type: :request do
  before :each do
    @sport1 = create(:sport, name: 'Archery')
    create(:event, name: "Archery Men's Individua", sport_id: @sport1.id)
    create(:event, name: "Archery Men's Team", sport_id: @sport1.id)
    create(:event, name: "Archery Women's Individual", sport_id: @sport1.id)
    create(:event, name: "Archery Women's Team", sport_id: @sport1.id)
    @sport2 = create(:sport, name: 'Basketball')
    create(:event, name: "Basketball Men's Basketball", sport_id: @sport2.id)
    create(:event, name: "Basketball Women's Basketball", sport_id: @sport2.id)
  end
  # it 'sends a list of events' do
  #   get '/api/v1/events'
  #
  #   expect(response).to be_successful
  #
  #   events = JSON.parse(response.body)['events']
  #
  #   expect(events.count).to eq(2)
  # end

  it 'each list event contains a sport and a list of events' do
    get '/api/v1/events'

    expect(response).to be_successful

    event = JSON.parse(response.body)['data'][0]['attributes']

    expect(event['sport']).to eq("Archery")
    expect(event['events']).to eq(["Archery Men's Individua",
                                  "Archery Men's Team",
                                  "Archery Women's Individual",
                                  "Archery Women's Team"])
  end
end
