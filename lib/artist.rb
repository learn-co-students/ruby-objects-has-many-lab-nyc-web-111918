class Artist
  attr_accessor :name
  @@all = []
  def initialize(name="")
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song_name)
    song_name.artist = self
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  def self.song_count
    new_arr = []
    @@all.each do |artist|
      new_arr << Song.all.select { |song| song.artist == artist }
    end
    new_arr.flatten.length
  end

  def add_song_by_name(song_name)
    song_name = Song.new(song_name, self)
    @@all << song_name
  end
end
