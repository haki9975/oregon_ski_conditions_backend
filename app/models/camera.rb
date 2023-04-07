require 'nokogiri'
require 'open-uri'

class Camera < ApplicationRecord
    has_one_attached :image
    validates :name, :location, :uri, presence: true

    def scrape_image
        uri = "http://www.santiampassskipatrol.org/wx/weather4.htm"
        doc = Nokogiri::HTML(URI.open(uri))
# a.map { |a| a.attributes["href"].value   _____________________________ need to figure out how to get the differences between the webcam images and the whatever else images, and only grab the valid webcam ones we want
        a_tag = doc.css('a[href*=weather]').first

        binding.irb
    end





end
