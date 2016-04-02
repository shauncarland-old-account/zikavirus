require 'nokogiri'
require 'open-uri'
require 'pry'
require 'httparty'
url = "http://ais.paho.org/phip/viz/ed_zika_cases.asp"
doc = Nokogiri::HTML(url)
page = HTTParty.get('')
binding.pry
