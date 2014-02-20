
require 'httparty'
require 'pry'
require 'uri'

class WolframDistance

  
  def self.find_distance(keyword, api_key = ENV['WA_APPID'])
    keyword = URI.encode(keyword)
    response = HTTParty.get("http://api.wolframalpha.com/v2/query?input=#{keyword}&appid=#{api_key}")

    distance = response["queryresult"]["pod"][1]["subpod"]["plaintext"]
    distance = distance.delete " miles"
    distance = distance.to_i
    distance
  end
end

