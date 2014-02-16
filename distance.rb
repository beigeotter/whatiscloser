require 'httparty'
require 'pry'
require './distance_class.rb'
require './datacenter_class.rb'

#gets the user's location from the command line
location = gets.chomp

#uses distances_to_measure in the datacenter class to get a list of distances (eg. berlin to New York, New York, United States)
locations = DataCenterClass.distances_to_measure_method(location, DataCenterClass::DISTANCES_TO_MEASURE)

#displays each of the comparison distances(
#"eg. berlin to North Bergen, New Jersey, United States
#berlin to New York, New York, United States
#berlin to San Francisco, California, United States
#berlin to Amsterdam, The Netherlands
#berlin to Amsterdam, The Netherlands")


puts locations


#displays something like:
#[#<DistanceClass:0x007ffccad36ac0
#  @distance=10359,
#  @title="Melbourne, Victoria, Australia to North Bergen, New Jersey">,
 #<DistanceClass:0x007ffccaebdf88
#  @distance=10278,
#  @title=
#   "Melbourne, Victoria, Australia to Amsterdam, Noord-Holland, Netherlands">]
#
distance_to_each_datacenter = []

locations.each do |l|
  distance_to_each_datacenter.push(DistanceClass.find_distance(l))
end

#distance_to_each_datacenter = distance_to_each_datacenter.sort_by {|distance,title| distance}.reverse
puts distance_to_each_datacenter


binding.pry
