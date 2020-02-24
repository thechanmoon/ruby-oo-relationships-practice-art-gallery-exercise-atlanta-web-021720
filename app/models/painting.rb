class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    #(@@all.map do |painting| painting.price end ).inject(0,:+)
    #(@@all.map do |painting| painting.price end ).sum

     @@all.inject(0) do | sum, painting | 
        sum + painting.price
     end
  end
end
