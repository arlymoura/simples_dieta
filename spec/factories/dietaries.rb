FactoryBot.define do
  factory :dietary do
    weight { Faker::Measurement.weight }
    height {Faker::Measurement.height }
    ideal_weight { aker::Measurement.weight }
    start_date { Faker::Date.between(from: Date.today, to: Date.today) }
    end_date { Faker::Date.forward(days: 23) }
    user { nil }
  end
end
