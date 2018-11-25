require "pry"
class Artist
  attr_accessor :name
  @@artists = []

  def initialize(name)
    @name = name
    @songs = []
    @@artists << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  # def self.artist_name   #return names of artist of given song
  #   self.name
  # end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end

  def self.song_count
    count = 0
    @@artists.each do |artist|
      count += artist.songs.length
    end
    count
  end

  def songs
    @songs
  end
end # End of Artist class
