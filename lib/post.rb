class Post

# ~~post instance needs to know about the author class it belongs to~~
	attr_accessor :title, :author

	@@all = []

	def initialize(title)
		@title = title
# ~~access that array, the song class will also need a class method that returns the class variable holding those instance~~
		@@all << self
	end

	def self.all
		@@all
	end

	def self.findPostsByAuthor(author_name)
		result = []
		self.all do |post|
			if post.author.name == author_name
				result << post
			end
		end
		return result
	end

	def author_name
		if self.author != nil
			self.author.name
		else
			nil
		end
	end



end # end of Post class method
