require 'pry'


class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
   @songs
  end

  def add_song(song)
    # binding.pry
    #song is passed in, @songs is the array of songs. this is instance for this class
    @songs << song
    #argument passed in, artist is read write
    song.artist = self
  end

   def add_song_by_name(song)
     #use song class new for song to add to this artist instance.  new song initializes to add to song class array so we cna still count it.
    new_artist_song = Song.new(song)
    add_song(new_artist_song)
  end

   def self.song_count
    #binding.pry
    Song.all.count
  end


end # end of artist class
