require 'httparty'
require 'pry'
require './distance_class.rb'
class DataCenterClass

#DigitalOcean DataCenters
  #New York 1
#do_nyc1_dc_address = "North Bergen, New Jersey, United States"
#do_nyc1_dc_ip_address = "speedtest-ny1.digitalocean.com"
  #as of December 29th, the IP is 198.211.112.36
  
 #New York 2
#do_nyc2_dc_address = "New York, New York, United States"
#do_nyc2_dc_ip_address = "speedtest-nyc2.digitalocean.com"
  #as of December 29th, the IP is 162.243.123.82

 #San Francisco 
#do_sf_dc_address = "San Francisco, California, United States"
#do_sf_dc_ip_address = "speedtest-sfo1.digitalocean.com"
  #as of December 29th, the IP is 162.243.146.51

 #Amsterdam 1
#do_ams_dc_address = "Amsterdam, The Netherlands"
#do_ams_dc_ip_address = "speedtest-ams1.digitalocean.com"
  #as of December 29th, the IP is 146.185.183.239

 #Amsterdam 2
#do_ams_dc_address = "Amsterdam, The Netherlands"
#do_ams_dc_ip_address = "speedtest-ams2.digitalocean.com"
  #as of December 29th, the IP is 95.85.7.154

#DataCenterClass::DATACENTER_LOCATIONS
DATACENTERS_LOCATIONS = {
  donyc1: { address: 'North Bergen, New Jersey, United States', ip: 'speedtest-ny1.digitalocean.com' },
  donyc2: { address: 'New York, New York, United States', ip: 'speedtest-nyc2.digitalocean.com' },
  dosfo1: { address: 'San Francisco, California, United States', ip: 'speedtest-sfo1.digitalocean.com' },
  doams1: { address: 'Amsterdam, The Netherlands', ip: 'speedtest-ams1.digitalocean.com' },
  doams2: { address: 'Amsterdam, The Netherlands', ip: 'speedtest-ams2.digitalocean.com' },
}
#Methods
distances_to_measure = []
ips_to_measure = []

DATACENTERS_LOCATIONS.each do |name, details|
    distances_to_measure.push(details[:address])
    ips_to_measure.push(details[:ip])

end
   

def distances_to_measure(keyword, distances_to_measure)
  distances_to_measure.map! {|item| "#{keyword} to #{item}"}
end








puts distances_to_measure
binding.pry
end
