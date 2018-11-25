class Song
  attr_accessor :name

  @@all = []
  def initialize(name="", artist= "")
    @name = name
    @artist = artist

    @@all << self
  end

  def artist=(artist_ne)
    @artist = artist_ne
  end

  def artist
    @artist
  end

  def self.artist
    Artist.all.find { |artist| artist == self.artist}
  end

  def self.all
    @@all
  end

  def artist_name
    found_artist = Artist.all.find { |artist| artist == self.artist}
    if found_artist
      found_artist.name
    else
      nil
    end
  end

end
