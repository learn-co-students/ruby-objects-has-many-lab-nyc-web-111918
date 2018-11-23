class Artist

  attr_reader :songs
  attr_accessor :name

  @@songs
  @@all_artists = []

  def initialize(name)
    @name = name
    @songs = []
    @@all_artists << self
  end
  #
  def self.all_artists
    @@all_artists
  end
  #
  # #add_song
  #   takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist (FAILED - 1)

  def add_song(song)
    @songs << song
    song.artist = self
  end
  #
  # #add_song_by_name
  # takes in an argument of a song name, creates a new song with it and associates the song and artist (FAILED - 1)

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end

  # .song_count
  #   is a class method that returns the total number of songs associated to all existing artists (FAILED - 2)

  def self.song_count
    all_songs = self.all_artists.select do |artist|
      artist.songs.length != 0
    end
    all_songs.length
  end

end
