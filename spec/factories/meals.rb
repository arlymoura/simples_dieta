FactoryBot.define do
  factory :meal do
    dietary { nil }
    description { Faker::Lorem.paragraph_by_chars }
    kind { DietaryKind.list.last }
    hour { "2020-06-17 22:56:24" }
  end
end
