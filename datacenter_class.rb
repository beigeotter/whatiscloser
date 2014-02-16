require 'httparty'
require 'pry'
require './distance_class.rb'
class DataCenterClass


  #DataCenterClass::DATACENTER_LOCATIONS
  DATACENTERS_LOCATIONS = {
    donyc1: { address: 'North Bergen, New Jersey, United States', ip: 'speedtest-ny1.digitalocean.com' },
    #donyc2: { address: 'New York, New York, United States', ip: 'speedtest-nyc2.digitalocean.com' },
    #dosfo1: { address: 'San Francisco, California, United States', ip: 'speedtest-sfo1.digitalocean.com' },
    #doams1: { address: 'Amsterdam, The Netherlands', ip: 'speedtest-ams1.digitalocean.com' },
    doams2: { address: 'Amsterdam, The Netherlands', ip: 'speedtest-ams2.digitalocean.com' },
  }
  #Methods
  DISTANCES_TO_MEASURE = []
  ips_to_measure = []

  DATACENTERS_LOCATIONS.each do |name, details|
    DISTANCES_TO_MEASURE.push(details[:address])
      ips_to_measure.push(details[:ip])

  end
     

  def self.distances_to_measure_method(keyword, distances_to_measure)
    DISTANCES_TO_MEASURE.map! {|item| "#{keyword} to #{item}"}
    #puts DISTANCES_TO_MEASURE
  end

end
