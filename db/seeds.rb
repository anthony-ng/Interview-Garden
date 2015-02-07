# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

require 'faker'

# 20.times do
#   Question.create(title: Faker::Hacker.say_something_smart + "?", content: Faker::Lorem.sentences(5).join(" "))
# end


Question.create(title: 'Apple Stocks', content: 'I have an array stock_prices_yesterday where:The indices are the time, as a number of minutes past trade opening time, which was 9:30am local time.The values are the price of Apple stock at that time, in dollars.')
Question.create(title: 'Product of All Other Numbers', content: 'Write a function get_products_of_all_ints_except_at_index() that takes an array of integers and returns an array of the products.')
Question.create(title: 'Highest Product of 3', content: 'Given an array_of_ints, find the highest_product you can get from three of the integers.')
Question.create(title: 'Making Change', content: 'Your quirky boss found out that you\'re a programmer and has a weird request about something they\'ve been wondering for a long time. Write a function that, given:an amount of money a list of coin denominations computes the number of ways to make amount of money with coins of the available denominations.')
Question.create(title: 'Temperature Tracker', content: 'Write a class TempTracker with these methods: insert()—records a new temperature get_max()—returns the highest temp we\'ve seen so far get_min()—returns the lowest temp we\'ve seen so far get_mean()—returns the mean of all temps we\'ve seen so far get_mode()—returns the mode of all temps we\'ve seen so far')
Question.create(title: 'Balanced Binary Tree', content: 'Write a function to see if a binary tree  is "superbalanced" (a new tree property we just made up).')
Question.create(title: 'Binary Search Tree Checker', content: 'Write a function to check that a binary tree is a valid binary search tree .')
Question.create(title: '2nd Largest Item in a Binary Search Tree', content: 'Write a function to find the 2nd largest element in a binary search tree.')
Question.create(title: 'Find in Ordered Set', content: 'Suppose we had an array of n integers in sorted order. How quickly could we check if a given integer is in the array?')
Question.create(title: 'Compute nth Fibonacci Number', content: 'Write a function fib() that a takes an integer n and returns the nth fibonacci number.')
Question.create(title: 'Queue Two Stacks', content: 'Implement a queue with 2 stacks . Your queue should have an enqueue and a dequeue function and it should be "first in first out" (FIFO).')
Question.create(title: 'Delete Node', content: 'Delete a node from a singly linked list , given only a variable pointing to that node.')
Question.create(title: 'Reverse A Linked List', content: 'Write a function for reversing a linked list .')
Question.create(title: 'Reverse String in Place', content: 'Write a function to reverse a string in place.')
Question.create(title: 'Reverse Words', content: 'Write a function reverse_words() that takes a string message and reverses the order of the words in place .')
Question.create(title: 'Permutation Palindrome', content: 'Write an efficient function that checks whether any permutation of an input string is a palindrome.')
Question.create(title: 'Recursive String Permutations', content: 'Write a recursive function for generating all permutations of an input string. Return them as an array.')
Question.create(title: 'Merge Sorted Arrays', content: 'We have our lists of orders sorted numerically already, in arrays. Write a function to merge our arrays of orders into one sorted array.')
Question.create(title: 'Two Egg Problem', content: 'If an egg is dropped from above that floor, it will break. If it is dropped from that floor or below, it will be completely undamaged and you can drop the egg again. Given two eggs, find the highest floor an egg can be dropped from without breaking, with as few drops as possible.')
Question.create(title: 'Simulate 5-sided die', content: 'You have a function rand7() that generates a random number from 1 to 7. Use it to write a function rand5() that generates a random number from 1 to 5.')

100.times do
  Answer.create(title: Faker::Hacker.say_something_smart, content: Faker::Lorem.sentences(5).join(" "), question_id: rand(1..20))
end