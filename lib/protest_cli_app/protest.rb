require 'pry'

# https://act.moveon.org/event/mueller-firing-rapid-response-events/search/


class ProtestCliApp::Protest
  attr_accessor :name, :venue, :time, :url, :attendees, :city

  def self.today
    self.scrape_protests
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

    def self.scrape_protests
      protests = []
      # go to target site
      #extract protest properties
      #instantiate a protest
      # ultimately i want an array of protests i scraped. grab and push them to array

      protests << self.scrape_moveon
      protests

    end

    def self.scrape_moveon
      doc = Nokogiri::HTML(open("https://act.moveon.org/event/mueller-firing-rapid-response-events/search/"))
      # binding.pry
      protest = self.new
      protest.name = doc.search("a.event-title").text.strip
      protest.venue = doc.search("div.event-venue").text.strip
      protest.attendees = doc.search("div.event-attendee-count").text.strip
      protest.city = doc.search("div.event-city-etc").text.strip
      # binding.pry

      # binding.pry


      protest
      # binding.pry

    end




end
