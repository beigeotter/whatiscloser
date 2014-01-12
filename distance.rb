require 'httparty'
require 'pry'
require './distance_class.rb'
require './datacenter_class.rb'


location = gets.chomp
#paris = DistanceClass.find_distance("#{location} to berlin")

#madrid = DistanceClass.find_distance("madrid to berlin")

#puts paris.to_s
#puts madrid.to_s

locations = DataCenterClass.distances_to_measure_method(location, DataCenterClass::DISTANCES_TO_MEASURE)

puts locations

locations.each do |l|
  puts DistanceClass.find_distance(l)
end


binding.pry
