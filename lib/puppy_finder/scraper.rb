class Scraper

  def self.breeds
    user_input = gets.strip
    doc = Nokogiri::HTML(open('https://www.puppyspot.com/'))

    breeds =  doc.css(".breed").text.gsub("\n", ", ").split(", ").delete_if{|n| n == "Any Breed" || n == ""}
    puts breeds

    # organize through letters?
    # maybe only do first 10?
    # user input must affect choice
  end
end
