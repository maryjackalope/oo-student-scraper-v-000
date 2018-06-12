class Scraper
 	 
def self.scrape_index_page(index_url)	   
  doc = Nokogiri::HTML(open(index_url))
  students = []
  doc.css("div .roster-cards-container").each do |card|
  card.css(".student-card a").each do |student|
  students << {:name => "#{student.css(".student-name").text}", :location => "#{student.css(".student-location").text}", :profile_url => "#{student.attr("href")}"}
    end
    end
 students
end	


