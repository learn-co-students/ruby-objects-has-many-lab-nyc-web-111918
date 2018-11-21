class Artist
  attr_accessor :name, :songs

  @@all = 0
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @@all += 1
  end

  def add_song_by_name(song)
    new = Song.new(song)
    add_song(new)
  end

  def self.song_count
     @@all
  end

end
