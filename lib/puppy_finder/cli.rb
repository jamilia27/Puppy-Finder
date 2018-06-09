class PuppyPedia
  attr_reader :breeds

  def call
    fresh
    greeting
    list_breeds
    read_bio
    # Scraper.list_breeds
    # List breeds within range
    # User selects a breed
    # Scraper.read_bio  (breed // USER INPUT GOES HERE)
    # Go back or exit
  end

  def page_break
    puts "*************************"
  end

  def greeting
    puts "Hello friend, welcome to PuppyPedia! Pease enter the first letter of the breed you would like to learn about!"
    puts ""
    @breeds = Scraper.scrape_all_breeds
  end

  def breeds_by_first_letter(letter)
    page_break
    @breeds.each do |breed|
      puts breed if breed.start_with?(letter)
    end
  end

  def list_breeds
    user_input = nil
    puts ""
    user_input = gets.strip.upcase
      case user_input
      when "A"
        breeds_by_first_letter("A")
      when "B"
        breeds_by_first_letter("B")
      when "C"
        breeds_by_first_letter("C")
      when "D"
        breeds_by_first_letter("D")
      when "E"
        breeds_by_first_letter("E")
      when "F"
        breeds_by_first_letter("F")
      when "G"
        breeds_by_first_letter("G")
      when "H"
        breeds_by_first_letter("H")
      when "I"
        breeds_by_first_letter("I")
      when "J"
        breeds_by_first_letter("J")
      when "K"
        breeds_by_first_letter("K")
      when "L"
        breeds_by_first_letter("L")
      when "M"
        breeds_by_first_letter("M")
      when "N"
        breeds_by_first_letter("N")
      when "O"
        breeds_by_first_letter("O")
      when "P"
        breeds_by_first_letter("P")
      when "Q"
        puts "Sorry there are no breeds starting with Q :("
        puts "Please try again or type 'exit'"
        list_breeds
      when "R"
        breeds_by_first_letter("R")
      when "S"
        breeds_by_first_letter("S")
      when "T"
        breeds_by_first_letter("T")
      when "U"
        breeds_by_first_letter("U")
      when "V"
        breeds_by_first_letter("V")
      when "W"
        breeds_by_first_letter("W")
      when "X"
        breeds_by_first_letter("X")
      when "Y"
        breeds_by_first_letter("Y")
      when "Z"
        puts "Sorry there are no breeds starting with Z :("
        puts "Please try again or type 'exit'"
        list_breeds
      when "EXIT"
        goodbye
      else
        puts "Hm, not sure what you mean..."
        puts "Please try again or type 'exit'"
        list_breeds
      end
  end

  def goodbye
    puts "Come back soon to learn about more puppies!!!"
  end

  def fresh
    system "clear"
  end

  def get_bio(breed)
    Scraper.scrape_bio(breed)
  end

  def read_bio
    user_input = nil
    puts "Please type the name of the dog you would like to learn about or 'exit'"
    user_input = gets.strip.downcase
    if user_input == "exit"
      goodbye
    else
      get_bio(user_input)
    end
  end


  # def list_breeds
  #   input = nil
  #   while input != exit
  # end
end
