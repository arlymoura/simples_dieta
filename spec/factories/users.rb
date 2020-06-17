FactoryBot.define do
  factory :user do
    name { Faker::Company.name }
    document { Faker::Company.brazilian_company_number }
    email { Faker::Internet.email }
    phone { Faker::PhoneNumber.phone_number }
    whatsapp { Faker::PhoneNumber.phone_number }
    password { Faker::Internet.password(min_length: 8) }
  end
end
