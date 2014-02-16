require 'httparty'
require 'json'
require 'pry'

#the wolfram alpha credentials
wa_appid = ENV['WA_APPID']


# Preparing Wolphram Alpha Queries

#Between point_of_origin and first_destination
point_of_origin = "paris"
first_destination = "berlin"

distance_1 = "#{point_of_origin}%20to%20#{first_destination}"

#Between point_of_origin and second_destination

#distance_2 = "#{point_of_origin}%20to%20#{second_destination}"

puts distance_1
#puts distance_2

#Runs the Wolphram Alpha query 

response_1 = HTTParty.get("http://api.wolframalpha.com/v2/query?input=#{distance_1}&appid=#{wa_appid}")




puts JSON.pretty_generate(response_1)

response_1["queryresult"]["pod"].each do |pod_number|
  puts pod_number["title"]
  puts pod_number["subpod"]["plaintext"]
  puts "\n"
end


puts "\n"
#response_2 = HTTParty.get("http://api.wolframalpha.com/v2/query?input=#{distance_2}&appid=#{wa_appid}")

#puts JSON.pretty_generate(response_2)

binding.pry
