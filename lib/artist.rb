require "pry"

class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(title)
    song = Song.new(title)
    @songs << song
    song.artist = self
  end

  def self.song_count
    Song.all.map do |song|
      song.artist == self
    end.length
  end

end #end of class definition
