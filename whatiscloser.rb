require 'httparty'
require 'json'
require 'pry'

wa_appid = ENV['WA_APPID']


puts "What is your point of Origin?"
point_of_origin = gets.chomp
puts "What is your first destination?"
first_destination = gets.chomp
puts "What is your second destination?"
second_destination = gets.chomp

puts "We will now find out what is closer to #{point_of_origin}: #{first_destination} or #{second_destination}."

# Preparing Wolphram Alpha Queries

#Between point_of_origin and first_destination

distance_1 = "#{point_of_origin}%20to%20#{first_destination}"

#Between point_of_origin and second_destination

distance_2 = "#{point_of_origin}%20to%20#{second_destination}"

puts distance_1
puts distance_2

#Runs the Wolphram Alpha query 
response_1 = HTTParty.get("http://api.wolframalpha.com/v2/query?input=#{distance_1}&appid=#{wa_appid}")

puts JSON.pretty_generate(response_1)


puts "\n"
response_2 = HTTParty.get("http://api.wolframalpha.com/v2/query?input=#{distance_2}&appid=#{wa_appid}")

puts JSON.pretty_generate(response_2)


