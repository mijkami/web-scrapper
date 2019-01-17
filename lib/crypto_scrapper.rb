require 'nokogiri'
require 'open-uri'





def crypto_scrapper




page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

	


	array_name =[]
	page.xpath('//td[@class="text-left col-symbol"]').each do |name_crypto|
		array_name << name_crypto.text
		
	end


	array_price = []
	page.xpath('//td/a[@class="price"]').each do |price_crypto|
		array_price << price_crypto.text
		
	end



	return dashboard = Hash[array_name.zip(array_price)]

	#puts "Le dashboard (qui est un hash) contient maintenant #{array_name.length} nom et #{array_price.length} prix"

end