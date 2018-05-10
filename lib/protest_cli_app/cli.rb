
require 'pry'


class ProtestCliApp::CLI


  def call
    # binding.pry
    puts "hello world"
    list_protests
    menu
    goodbye
  end

  def list_protests
    puts "here are some local protests"

    # puts <<-DOC
    #   1. metoo
    #   2. mueller defense
    # DOC

    @protests = ProtestCliApp::Protest.today
    @protests.each.with_index(1) do |protest, i|
      puts "#{i}. #{protest.name}- #{protest.venue} - #{protest.city} - #{protest.attendees} "
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "enter the number of the protest you're interested in, or type list to see
            the list again, or type exit to exit the program"
      input = gets.strip.downcase

    if input.to_i > 0
      puts @protests[input.to_i - 1]
    elsif input == "list"
      list_protests
    else
      puts "not sure what you want, type list or exit."
    end
  end
  end

  def goodbye
    puts "see you tomorrow for more protests"
  end



end
