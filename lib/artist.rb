require'pry'

class Artist

	attr_reader :name
	attr_accessor :songs

	def initialize(name)
		@name = name
	end

	def songs
		Song.all.select do |song|
			song.artist == self
		end # end of select class
	end

	def add_song(song) # takes in an argument of a song
		# associates that song with the artist
		# by telling the song that it belongs to that artist
		song.artist = self
	end # end of add_song method

	def add_song_by_name(name)
		Song.new(name).artist = self 
	end
	# binding.pry

	def self.song_count
		Song.all.size
	end

# individual artist will need a method that
# returns a collection of all the songs that belong to that artist

end # end of Artist class method
#binding.pry
