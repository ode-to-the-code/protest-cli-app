require 'pry'

# https://act.moveon.org/event/mueller-firing-rapid-response-events/search/


class ProtestCliApp::Protest
  attr_accessor :title, :author, :description

  def self.today
    self.scrape_nyt
  end
    # should return a bunch of instances of protests happening today
    #scrape protests from the webiste and return protest objects based onthat data

    # this can be my scraper, doesnt have to be its own class.
    # so i would use nokogiri and bring the information here to the today method.
    # get a list of all the events. assuming its an unordered list, you would loop through
    # it.
    # you get everything into a doc variable from the website. then use a .each setup
    # and then go through all events in the list and create individual events with the
    # css selectors



    # you'd have a bunch a of li's or whatever, and each one would correspond to some
    # event. might be in avi's video

    # def self.scrape_nyt
    #   protests = []
    #   # go to target site
    #   #extract protest properties
    #   #instantiate a protest
    #   # ultimately i want an array of protests i scraped. grab and push them to array
    #
    #   protests << self.scrape_nyt
    #   protests
    #
    # end

    def self.scrape_nyt

      # can maybe do an each loop or collect where all these attributes are in the
      #body, so book.title and so on get added as each book object comes up in the loop
      doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/2018/01/14/"))
      # binding.pry

      bookbodies = doc.search("div.book-body")

# check out how the class interacts with the cli to decide whether to use each or collect
      bookbodies.collect do |bookbody|
        # binding.pry
        book = self.new
        book.title = bookbody.search("h3.title").text.strip
        book.author = bookbody.search("p.author").text.strip
        book.description = bookbody.search("p.description").text.strip
        book
        # binding.pry
      end


      # book = self.new
      # book.title = doc.search("h3.title").text.strip
      # book.author = doc.search("div.event-venue").text.strip
      # book.description = doc.search("div.event-attendee-count").text.strip
      # binding.pry

      # binding.pry

      # binding.pry

    end

    def reload!
      load './lib/protest_cli_app/protest.rb'
    end




end
