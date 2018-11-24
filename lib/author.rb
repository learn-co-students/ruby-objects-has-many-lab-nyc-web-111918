require'pry'
class Author

	attr_reader :name
	attr_accessor :posts

	def initialize(name)
		@name = name
		@posts = posts
	end

	def posts
		Post.all.select do |post|
			post.author == self
		end
	end

	def add_post(post)
		post.author = self
	end

	def add_post_by_title(title)
		Post.new(title).author = self
	end

	def self.post_count
		Post.all.size
	end
end # end of Author class method
