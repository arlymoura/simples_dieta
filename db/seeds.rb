# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Criando Usuário'
User.create!(email: 'user@teste.com', password: '12345678')

date = DateTime.now
puts 'Criando Dietas'
15.times do
  Dietary.create_or_find_by!(
    start_date: DateTime.now,
    end_date: DateTime.now,
    weight: Faker::Number.within(range: 80..180),
    height: 180,
    ideal_weight: 80,
    user: User.last,
    created_at: date,
  )

  DietaryKind.list.each do |kind| 
    Meal.create!(
      dietary: Dietary.last,
      description: Faker::Lorem.paragraph_by_chars,
      kind: kind,
      hour: Time.now,
    )
  end

  date += 1.month
end