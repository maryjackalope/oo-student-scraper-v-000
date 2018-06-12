require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = File.read('./fixtures/student-site/index.html')
    nokified= Nokogiri::HTML(html) 
    scraped_students = []
    nokified.css("div.student-card").each do |student|  
      scraped_students << {:name => student.css("h4.student-name").text , :location => student.css("p.student-location").text ,:profile_url => "#{student.css("a").attribute("href").value}"}
        end 
        scraped_students
      #binding.pry
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

