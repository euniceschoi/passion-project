require 'Faker'

20.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, username: Faker::Internet.user_name, password: "password", phone_number: Faker::PhoneNumber.cell_phone)
end

100.times do
  Message.create(user_id: rand(1..20), content:Faker::Lorem.sentence)
end

100.times do
  Friend.create(user_id: rand(1..20), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone)
end

