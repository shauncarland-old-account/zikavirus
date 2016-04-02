require 'nokogiri'
require 'open-uri'
require 'pry'
require 'httparty'

url = "http://www.cdc.gov/zika/geo/united-states.html"
page = HTTParty.get(url)
parse_page = Nokogiri::HTML(page)

#Array to store the state names
states_array = []
travel_array = []
local_array = []
x = 1
parse_page.css('td').each_with_index do |item, i|
  # if item.to_s = "<td>Territories</td>"
  #   return
  # end

  if x == 1
    states_array << item.to_s.gsub(/<\/?[^>]*>/, "")
  elsif x == 2
    travel_array << item.to_s.gsub(/<\/?[^>]*>/, "")
  else
    local_array << item.to_s.gsub(/<\/?[^>]*>/, "")
  end
  x = x + 1
  if x > 3
    x = 1
  end
  # if i == 149
  #   return
  # end
end

binding.pry
