FactoryBot.define do
  factory :olympian do
    sequence(:name) { |n| "Name #{n}" }
    sequence(:sex) { ["M", "F"].sample }
    sequence(:age) { rand(13..62) }
    sequence(:height) { |n| n }
    sequence(:weight) { rand(55..200) }
    sequence(:team) { |n| "Team #{n}" }
    sequence(:games) { "2020 Games" }
    sequence(:sport) { |n| "Sport #{n}" }
    sequence(:event) { |n| "Event #{n}" }
    sequence(:medal) { ['Gold','Silver','Bronze','NA'].sample }
  end
end
