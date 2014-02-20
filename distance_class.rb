require 'httparty'
require 'pry'
require 'uri'

class DistanceClass
  attr_reader :source, :destination, :distance

  def initialize(source, destination, distance)
    @source = source
    @destination = destination
    @distance = distance
  end

  def to_s
    "#{source} is #{distance} away from #{destination}"
  end
end


## An example of how to measure distance once generated
#  def far_away?
#    # Convert distance to number first
#    if distance > 500
#      true
#    else
#      false
#    end
#  end


