require 'httparty'
require 'pry'
require 'uri'

class DistanceClass
  attr_reader :distance, :title

  def self.find_distance(keyword, api_key = ENV['WA_APPID'])
    keyword = URI.encode(keyword)
    response = HTTParty.get("http://api.wolframalpha.com/v2/query?input=#{keyword}&appid=#{api_key}")

    distance = response["queryresult"]["pod"][1]["subpod"]["plaintext"] 
    title = response["queryresult"]["pod"][0]["subpod"]["plaintext"]

    DistanceClass.new(title, distance)
  end

  def initialize(title, distance)
    @distance = distance
    @title = title
  end

  def far_away?
    # Convert distance to number first
    if distance > 500
      true
    else
      false
    end
  end

  def to_s
    #puts "#{title} is #{distance} away"
    distance
  end
end

