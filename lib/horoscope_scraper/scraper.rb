require 'open-uri'
require 'nokogiri'

class HoroscopeScraper::Scraper

attr_accessor :horoscope#, :name=nil

def self.todays_horoscopes
  #this is where i will return data
  self.scrape_signs
end


def self.scrape_signs
  signs = []
  signs << self.scrape_aries
  signs << self.scrape_taurus
  signs << self.scrape_gemini
  signs << self.scrape_cancer
  signs << self.scrape_leo
  signs << self.scrape_virgo
  signs << self.scrape_libra
  signs << self.scrape_scorpio
  signs << self.scrape_sagittarius
  signs << self.scrape_capricorn
  signs << self.scrape_aquarius
  signs << self.scrape_pisces

  signs
end

def self.scrape_aries
  doc = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/aries.html",  "Accept-Encoding" => "plain"))
  sign = self.new
  sign.horoscope = doc.search("p").text
  #sign.name = "Aries"
  sign
end

def self.scrape_taurus
  doc = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/taurus.html",  "Accept-Encoding" => "plain"))
  sign = self.new
  sign.horoscope = doc.search("p").text
  sign
end

def self.scrape_gemini
  doc = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/gemini.html",  "Accept-Encoding" => "plain"))
  sign = self.new
  sign.horoscope = doc.search("p").text
  sign
end


def self.scrape_cancer
  doc = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/cancer.html",  "Accept-Encoding" => "plain"))
  sign = self.new
  sign.horoscope = doc.search("p").text
  sign
end

def self.scrape_leo
  doc = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/leo.html",  "Accept-Encoding" => "plain"))
  sign = self.new
  sign.horoscope = doc.search("p").text
  sign
end

def self.scrape_virgo
  doc = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/virgo.html",  "Accept-Encoding" => "plain"))
  sign = self.new
  sign.horoscope = doc.search("p").text
  sign
end

def self.scrape_libra
  doc = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/libra.html",  "Accept-Encoding" => "plain"))
  sign = self.new
  sign.horoscope = doc.search("p").text
  sign
end

def self.scrape_scorpio
  doc = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/scorpio.html",  "Accept-Encoding" => "plain"))
  sign = self.new
  sign.horoscope = doc.search("p").text
  sign
end

def self.scrape_sagittarius
  doc = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/sagittarius.html",  "Accept-Encoding" => "plain"))
  sign = self.new
  sign.horoscope = doc.search("p").text
  sign
end

def self.scrape_capricorn
  doc = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/capricorn.html",  "Accept-Encoding" => "plain"))
  sign = self.new
  sign.horoscope = doc.search("p").text
  sign
end

def self.scrape_aquarius
  doc = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/aquarius.html",  "Accept-Encoding" => "plain"))
  sign = self.new
  sign.horoscope = doc.search("p").text
  sign
end

def self.scrape_pisces
  doc = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/pisces.html",  "Accept-Encoding" => "plain"))
  sign = self.new
  sign.horoscope = doc.search("p").text
  sign
end


end #end the class
