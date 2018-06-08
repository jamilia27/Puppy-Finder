class PuppyPedia
  def call
    greeting
    list_breeds
    # User selects a range of letters
    # Scraper.list_breeds
    # List breeds within range
    # User selects a breed
    # Scraper.read_bio  (breed // USER INPUT GOES HERE)
    # Go back or exit
  end

  def greeting
    puts "Hello friend, welcome to PuppyPedia! Pease select from the range below to see what breeds you can learn more about!"
    puts "For A-E, please enter 1"
    puts "For F-J, please enter 2"
    puts "For K-O, please enter 3"
    puts "For P-T, please enter 4"
    puts "For U-Z, please enter 5"
  end

  def list_breeds
    @breeds = Scraper.scrape_all_breeds
  end
end
