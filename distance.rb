require 'httparty'
require 'pry'
require './distance_class.rb'
require './datacenter_class.rb'
require './wolfram_distance.rb'

#don't include the word class in the class names. Rename later


#gets the user's location from the command line
users_location = gets.chomp

#uses distances_to_measure in the datacenter class to get a list of distances (eg. berlin to New York, New York, United States)
locations = DataCenterClass::DISTANCES_TO_MEASURE

puts locations

distance_to_each_datacenter = []

locations.each do |l|
  wolfram_keyword = "#{users_location} to #{l}"
  distance = WolframDistance.find_distance(wolfram_keyword)
  distance_to_each_datacenter.push(DistanceClass.new(users_location, l, distance))
end

#distance_to_each_datacenter = distance_to_each_datacenter.sort_by {|distance,title| distance}.reverse
puts distance_to_each_datacenter

distances_to_dcs_sorted_by_distance = distance_to_each_datacenter.sort { |x, y| x.distance <=> y.distance }

closest_datacenter = distances_to_dcs_sorted_by_distance[0].destination

puts "The closest datacenter is #{closest_datacenter}"

