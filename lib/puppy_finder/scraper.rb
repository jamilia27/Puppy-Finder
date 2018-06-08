class Scraper

  def self.split_breed_name(breed)
    breed.split.delete_if{|n| n == "-"}.join("-").downcase
  end

  def self.scrape_bio(breed)
    doc = Nokogiri::HTML(open("https://www.puppyspot.com/puppies-for-sale/breed/#{split_breed_name(breed)}/overview"))

    bio = doc.css('div.row.full-width.breed-desc').text.split("\n").delete_if{|x| x == "" || x.start_with?("About")}

    bio
  end

  def self.scrape_all_breeds
  doc = Nokogiri::HTML(open('https://www.puppyspot.com/'))

    breeds =  doc.css(".breed").text.gsub("\n", ", ").split(", ").delete_if{|n| n == "Any Breed" || n == ""}

  end


  # def self.list_breeds
  #   user_input = gets.strip

  #   doc = Nokogiri::HTML(open('https://www.puppyspot.com/'))

  #   breeds =  doc.css(".breed").text.gsub("\n", ", ").split(", ").delete_if{|n| n == "Any Breed" || n == ""}
  #   breeds.each do |breed|
  #     breed.gsub(" ", "")
  #     if breed == user_input
  #       puts breed
  #     end
  #   end


    # case user_input
    #   when "A"
    #     breeds.map do |breed|
    #     if breed.start_with?("A")
    #       puts breed
    #     else
    #       puts "Did you mean exit?"
      #   end
      # end
    # end
  # end
end
