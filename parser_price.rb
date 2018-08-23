
require 'mechanize'
require 'spreadsheet'

@mechanize = Mechanize.new

@book = Spreadsheet::Workbook.new

sheet1 = book.create_worksheet


@page = @mechanize.get('https://lock.ua/catalog/tsilindri/') 

@name = []

@name = @page.links_with(href: /din/, text: /Циліндр/)

@price = []

@price = @page.search('div.bx_catalog_item_price').map{|x| x.text}

sheet1 = book.create_worksheet

each_with_index do |name, price| 
	sheet1[index, 0] = val
end


