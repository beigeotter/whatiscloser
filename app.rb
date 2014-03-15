require 'sinatra'
require 'httparty'
require 'pry'
require './distance_class.rb'
require './datacenter_class.rb'
require './wolfram_distance.rb'


get '/' do
  erb :form
end

post '/form' do
 locations = DataCenterClass::DISTANCES_TO_MEASURE
 #puts locations
 
 distance_to_each_datacenter = []
 
 locations.each do |l| 
   wolfram_keyword = "'#{params[:users_location]}' to #{l}"
   distance = WolframDistance.find_distance(wolfram_keyword)
   distance_to_each_datacenter.push(DistanceClass.new('#{params[:users_location]}', l, distance))
 end
 
 #distance_to_each_datacenter = distance_to_each_datacenter.sort_by {|distance,title| distance}.reverse
 puts distance_to_each_datacenter
 
 distances_to_dcs_sorted_by_distance = distance_to_each_datacenter.sort { |x, y| x.distance <=> y.distance }
 
 closest_datacenter = distances_to_dcs_sorted_by_distance[0].destination
 
#"You entered '#{params[:users_location]}'"
"You entered #{params[:users_location]}....The closest datacenter is #{closest_datacenter}"


end


not_found do
    status 404
    'not found'
end
