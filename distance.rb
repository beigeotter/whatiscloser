require 'httparty'
require 'pry'
require './distance_class.rb'

location = gets.chomp
paris = DistanceClass.find_distance("#{location} to berlin")

madrid = DistanceClass.find_distance("madrid to berlin")

puts paris.to_s
puts madrid.to_s




#binding.pry
