class PuppyFinder
  def call
    greeting
    Scraper.breeds
    user_input
    puts "You've selected *breed variable here*. Select a puppy to learn more!"
    # Lists adoptable puppies
    # Gets user input
    # Reveal specific puppy bio
  end

  def greeting
    puts "Hello, welcome to puppy finder! Pease select a breed to continue:"
  end

  def user_input
    gets.strip
  end

  def select_puppy(puppy_breed)
  end

  def read_bio(puppy_name)

  end
end
