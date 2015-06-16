def rand_int(from, to)
  rand_in_range(from, to).to_i
end

def rand_price(from, to)
  rand_in_range(from, to).round(2)
end

def rand_time(from, to=Time.now)
  Time.at(rand_in_range(from.to_f, to.to_f))
end

def rand_in_range(from, to)
  rand * (to - from) + from
end

10.times do
  User.create(email: Faker::Internet.email, username: Faker::Internet.user_name, password: 'password')
end

10.times do
  Story.create(title: Faker::Name.title, body: Faker::Lorem.paragraph(30 + rand(70)), user: User.all.sample)
end

10.times do
  Goal.create(name: Faker::Name.title,
    description:Faker::Lorem.paragraph(30 + rand(70)),
    user: User.all.sample,
    starts_at: rand_time(2.days.ago),
    ends_at: rand_time(2.days.ago))
end

10.times do
  Reminder.create(name: Faker::Name.title,
    description:Faker::Lorem.paragraph(30 + rand(70)),
    goal: Goal.all.sample)
end

10.times do
  Completion.create(
    completed: true,
    goal: Goal.all.sample)
end
