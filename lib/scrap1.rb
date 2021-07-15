require 'rubygems'
require 'nokogiri'
require 'open-uri'



def scrapChrypto 
page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))   
page.class

nom=[]
prix=[]
page.css('tr td:nth(2)').each{|val| nom<< val.text unless val.text=="" }
page.css('tr td:nth(5)').each{|val| prix<< val.text unless val.text=="" }
prix=prix.map(&:to_f)

hashScrap =nom.zip(prix).to_h 
return hashScrap
end

p scrapChrypto

