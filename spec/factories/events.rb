FactoryBot.define do
  factory :event do
    sequence(:name) { |n| "Party #{n}"}
  end
end
