class Song
  attr_accessor :name, :artist

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
    return self.artist.name unless artist.nil?
    nil
  end
end
