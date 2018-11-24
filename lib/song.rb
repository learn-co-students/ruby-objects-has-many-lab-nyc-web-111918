require 'pry'

class Song
	# figure out what the attributes are
	attr_reader :name
	attr_accessor :artist

	@@all = []
	# figure out what to initialize
	def initialize(name)
		@name = name

# ~~the song class will need to have a class variable that holds all instances of every song that's been created in an array~~
		@@all << self
	end

# ~~access that array, the song class will also need a class method that returns the class variable holding those instances.~~
	def self.all
		@@all
	end

	def artist_name
		if self.artist == nil
			return nil
		else
			self.artist.name
		end
	end

end # end of Song class method
