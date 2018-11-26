require'pry'
class Artist

  attr_accessor :name #, :songs

  def initialize(name)
    @name = name
    @songs = [] #songs that belong to an artist
  end

  def songs
    @songs
  end

#takes in an argument of a song
#associates that song with the artist by telling the song
# that it belongs to that artist.
  def add_song(song)
    @songs.push(song)

    #hey artist, you belong to a song.
    song.artist = self
  end

#takes in an argument of a song name

  def add_song_by_name(song_name)
    #creates a new song with it
    song = Song.new(song_name)
    @songs << song #pushes the new song into the @songs array
    #and associates the song and artist
    song.artist = self
  end

#returns the total number of songs associated to all existing artists
  def self.song_count #class method
    #count all the songs in the @@all array in the song class.
    Song.all.length
  end


end #end of Artist Class
