require 'rubygems'
require 'nokogiri'
require 'open-uri'

def get_urls(url)
	page = Nokogiri::HTML(open(url))
	page.xpath('//td/a/@href ')
end 

def get_email(url)
	page = Nokogiri::HTML(open(url))
	page.xpath('//*[@id="b1"]/ul[2]/li[1]/ul/li[1]/a').text
end

def perform 
	domaine = "https://www.nosdeputes.fr"
	urls = get_urls("https://www.nosdeputes.fr/deputes")
	results = []
	i = 0

	urls.each do |e|
		a = e.to_s.rpartition('-')
		h = {"first_name" => a.first[1..-1], "last_name" => a.last, "email" => get_email(domaine+e)}
		results << h
		puts i+=1
	end

	puts results.class
end

perform