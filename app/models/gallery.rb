class Gallery

  attr_reader :name, :city, :artist, :painting
  @@all = []
  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists
    paintings.map do |painting|
      painting.artist
    end
  end

  def artist_names
    artists.map do |artist|
      artist.name
    end
  end

  def most_expensive_painting
    (paintings.map do |painting| painting.price end).max
  end
end

# a = Artist.new("Chan", 15)
# a1 = Artist.new("Jay", 15)
# g = Gallery.new("New York Gallery","New York")
# g1 = Gallery.new("Seoul Gallery","Seoul")
# p = Painting.new("Tibuorn", 1000, a, g)
# p1 = Painting.new("Special", 10000, a1, g1)
# p2 = Painting.new("Special Jay", 20000, a1, g1)
# 50.times do p2 = Painting.new("Special Jay", 20000, a1, g1) end
# a.paintings
# a.galleries
# a.cities