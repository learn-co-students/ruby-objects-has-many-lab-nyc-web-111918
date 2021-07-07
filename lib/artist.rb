require 'pry'

class Artist
  attr_accessor :name
  #attr_reader :song



  def initialize (name)
    @name = name
    @songs = []
  end

  def add_song_by_name (song_name)
    new_song = Song.new(song_name)
    add_song(new_song)
  end

  def add_song (song)
    @songs << song
  
    song.artist = self
  end

  def songs
    @songs
  end

  def self.song_count
    #binding.pry
    #@@all_songs.count
    Song.all.count
  end

end
