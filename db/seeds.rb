# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

require 'faker'

20.times do
  Question.create(title: Faker::Hacker.say_something_smart + "?", content: Faker::Lorem.sentences(5).join(" "))
end

50.times do
  Answer.create(title: Faker::Hacker.say_something_smart, content: Faker::Lorem.sentences(5).join(" "), question_id: rand(1..20))
end