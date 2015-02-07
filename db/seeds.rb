# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

require 'faker'

# 20.times do
#   Question.create(title: Faker::Hacker.say_something_smart + "?", content: Faker::Lorem.sentences(5).join(" "))
# end


Question.create(title: "Writing interview questions hasn't made me rich. Maybe trading Apple stocks will.", content: 'I have an array stock_prices_yesterday where:

The indices are the time, as a number of minutes past trade opening time, which was 9:30am local time.
The values are the price of Apple stock at that time, in dollars.
For example, the stock cost $500 at 10:30am, so stock_prices_yesterday[60] = 500.

Write an efficient algorithm for computing the best profit I could have made from 1 purchase and 1 sale of 1 Apple stock yesterday. For this problem, we won\'t allow "shorting"—you must buy before you sell.')
Question.create(title: "You have an array of integers, and for each index you want to find the product of every integer except the integer at that index.", content: "Write a function get_products_of_all_ints_except_at_index() that takes an array of integers and returns an array of the products.")
Question.create(title: "Given an array_of_ints, find the highest_product you can get from three of the integers.", content: "The input array_of_ints will always have at least three integers.")
Question.create(title: "Your company built an in-house calendar tool called HiCal. You want to add a feature to see the times in a day when everyone is available.", content: "To do this, you’ll need to know when any team is having a meeting. In HiCal, a meeting is stored as a tuple of integers (start_time, end_time) . These integers represent the number of 30-minute blocks past 9:00am.")
Question.create(title: "Imagine you landed a new job as a cashier...", content: "Your quirky boss found out that you're a programmer and has a weird request about something they've been wondering for a long time.

Write a function that, given:

an amount of money
a list of coin denominations
computes the number of ways to make amount of money with coins of the available denominations.")
Question.create(title: "A crack team of love scientists from OkEros (a hot new dating site) have devised a way to represent dating profiles as rectangles on a two-dimensional plane.", content: "They need help writing an algorithm to find the intersection of two users' love rectangles. They suspect finding that intersection is the key to a matching algorithm so powerful it will cause an immediate acquisition by Google or Facebook or Obama or something.")
Question.create(title: "You decide to test if your oddly-mathematical heating company is fulfilling its All-Time Max, Min, Mean and Mode Temperature Guarantee™.", content: "Write a class TempTracker with these methods:

insert()—records a new temperature
get_max()—returns the highest temp we've seen so far
get_min()—returns the lowest temp we've seen so far
get_mean()—returns the mean ↴ of all temps we've seen so far
get_mode()—returns the mode ↴ of all temps we've seen so far")
Question.create(title: 'Write a function to see if a binary tree ↴ is "superbalanced" (a new tree property we just made up).', content: 'A tree is "superbalanced" if the difference between the depths of any two leaf nodes is no greater than one.')
Question.create(title: 'Write a function to check that a binary tree ↴ is a valid binary search tree ↴ .', content: 'As title')
Question.create(title: 'Write a function to find the 2nd largest element in a binary search tree ↴ .', content: 'As title')
Question.create(title: 'Write a function to find the 2nd largest element in a binary search tree ↴ .', content: 'As title')
Question.create(title: 'Suppose we had an array ↴ of n integers in sorted order. How quickly could we check if a given integer is in the array?', content: 'As title')
# g

50.times do
  Answer.create(title: Faker::Hacker.say_something_smart, content: Faker::Lorem.sentences(5).join(" "), question_id: rand(1..20))
end