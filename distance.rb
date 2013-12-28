require 'httparty'
require 'pry'
require './wolfram_alpha_class'

paris = WolframAlphaClass.find_distance("paris to berlin")

madrid = WolframAlphaClass.find_distance("madrid to berlin")

puts paris.to_s
puts madrid.to_s



#binding.pry
