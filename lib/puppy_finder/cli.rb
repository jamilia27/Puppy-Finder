class PuppyPedia
  attr_reader :breeds

  def call
    fresh
    greeting
    list_breeds
    read_bio
    goodbye
  end

  def initialize
    @breeds = Scraper.scrape_all_breeds
  end

  def greeting
    puts "Hello, welcome to PuppyPedia! Pease enter the first letter of the breed you would like to learn about:"
    puts ""
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
        puts "Sorry there are no breeds starting with U :("
        puts "Please try again or type 'exit'"
        list_breeds
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

  def get_bio(breed)
    begin
      Scraper.scrape_bio(breed)
    rescue
      page_break
      puts "Sorry, it doesn't look like the breed you entered has a bio available. Please try again or type 'exit'"
      read_bio
    end
  end

  def read_bio
    puts ""
    page_break
    puts "Please type the name of the breed you would like to learn about or 'exit'"
    puts ""
    page_break
    user_input = gets.strip.downcase
      if user_input == "exit"
        goodbye
      else
        get_bio(user_input)
    end
  end

  def page_break
    puts "*************************"
  end

  def goodbye
    puts ""
    puts "Thanks for using PuppyPedia!"
    puts "Come back soon to learn about more puppies!!!"
  end

  def fresh
    system "clear"
  end

end
