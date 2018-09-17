class Location

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

class Trip

  def initialize
    @stops = []
  end

  def location(location)
    @stops.push(location.name)
  end

  def journey
    puts 'Began trip.'
    @stops.each_cons(2) do |stop|
      puts "Travelled from #{stop[0]} to #{stop[1]}."
    end
    puts 'Ended trip.'
  end

end

canada = Location.new('Canada')
italy = Location.new('Italy')
uk = Location.new('United Kingdom')
usa = Location.new('United States')
mexico = Location.new('Mexico')

trip = Trip.new
trip.location(canada)
trip.location(italy)
trip.location(uk)
trip.location(usa)
trip.location(mexico)

trip.journey
