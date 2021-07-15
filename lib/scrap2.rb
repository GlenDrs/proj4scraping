require 'rubygems'
require 'nokogiri'
require 'open-uri'



pageM = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/val-d-oise.html"))   
pageM.class

liens=[]
liens = pageM.css('tr a').map { |link| link['href'] }
#liens=liens.each.sub('.', '')
liens=liens[8..192]


adresstart= Array.new(185,"http://annuaire-des-mairies.com.")

liensFin=[]
for i in 0..184 
    
    liensFin << (adresstart[i]+liens[i])
    
   end
   liensFin.each do |s|
    s.gsub!('..', '')
end


def emailMairie (lienweb)
email=[]
ville=[]
lienweb.each do |url|
    doc = Nokogiri::HTML(open(url))
    email0 = doc.xpath('/html/body/div[1]/main/section[2]/div/table/tbody/tr[4]/td[2]').text
        ville0=doc.at_xpath("//h1/text()").text
        
        email << email0
        ville << ville0                      
end
listContact=ville.zip(email).to_h 

return listContact
end

 p " ---- ATENTION--- si applique la ligne dessous (49) l'execution va prendre beacoup de temps
 il vaut mieux peut être prendre un bout des données et les appliquer comme par example dans
 les lignes 51"

#p emailMairie(liensFin)

prov=liensFin[1..4]; p emailMairie(prov)











=begin


1.upto(185) do |pagenum|
  # Create a local variable named `url`
  url = "http://www.mywebsite.com/page/#{pagenum}"

  # Print it
  puts url
end

=end






