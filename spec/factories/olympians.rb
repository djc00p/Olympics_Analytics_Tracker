FactoryBot.define do
  factory :olympian do
    sequence(:name) { |n| "Name #{n}" }
    sequence(:sex) { "M" || "W" }
    sequence(:age) { |n| n }
    sequence(:height) { |n| n }
    sequence(:weight) { |n| n }
    sequence(:team) { |n| "Team #{n}" }
    sequence(:games) { "2020 Games" }
    sequence(:sport) { |n| "Sport #{n}" }
    sequence(:event) { |n| "Event #{n}" }
    sequence(:medal) { ['Gold','Silver','Bronze','NA'].sample }
  end
end
