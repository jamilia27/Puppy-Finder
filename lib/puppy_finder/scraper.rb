class Scraper

  def self.scrape_bio(breed)
    doc = Nokogiri::HTML(open("https://www.puppyspot.com/puppies-for-sale/breed/#{split_breed_name(breed)}/overview"))

    bio = doc.css('div.row.full-width.breed-desc').text.split("\n").delete_if{|x| x == "" || x.start_with?("About")}

    if bio == []
      puts ""
      CLI.call
    else
      puts ""
      puts bio
    end
  end

  def self.scrape_all_breeds
  doc = Nokogiri::HTML(open('https://www.puppyspot.com/'))

  breeds =  doc.css(".breed").text.gsub("\n", ", ").split(", ").delete_if{|x| x == "Any Breed" || x == ""}

  breeds
  end

  def self.split_breed_name(breed)
    breed.split.delete_if{|x| x == "-"}.join("-").downcase
  end

end
