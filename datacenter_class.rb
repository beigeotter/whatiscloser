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

  DATACENTERS_LOCATIONS.each do |name, details|
    DISTANCES_TO_MEASURE.push(details[:address])
  end
     

end
