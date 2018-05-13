
require 'pry'


class ProtestCliApp::CLI


  def call
    # binding.pry
    puts "hello world"
    list_books
    menu
    goodbye
  end

  def list_books
    puts "here are some bestselling books"

    @books = ProtestCliApp::Protest.today
    @books.each.with_index(1) do |book, i|
      puts "#{i}. #{book.name}- #{book.venue} - #{book.city} - #{book.attendees} "
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "enter the number of the book you're interested in, or type list to see
            the list again, or type exit to exit the program"
      input = gets.strip.downcase

    if input.to_i > 0
      puts @books[input.to_i - 1]
    elsif input == "list"
      list_books
    else
      puts "not sure what you want, type list or exit."
    end
  end
  end

  def goodbye
    puts "see you tomorrow for more books"
  end



end
