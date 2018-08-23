require 'mechanize'
require 'nokogiri'
require 'open-uri'

@mechanize = Mechanize.new

@page = @mechanize.get('https://lock.ua/catalog/tsilindri/') 

@goods = []

@goods = @page.links_with(href: /din/, text: /Циліндр/)

@images = []

def downloadImages

	@goods.each do |good_page| 
		temp_good_page = @mechanize.get(good_page)


@images = temp_good_page.images_with(src: /upload/)

@images.each do |img|
	img.fetch.save
	end
end
end



puts @goods[3].uri

downloadImages
