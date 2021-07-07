class Author

  attr_reader :posts
  attr_accessor :name
  # #new
  #   is initialized with a name (FAILED - 1)

  @@all_authors = []

  def initialize(name)
    @name = name
    @posts = []
    @@all_authors << self
  end

  #name
  #   has an attr_accessor for name (FAILED - 2)
  # #posts
  #   has many posts (FAILED - 3)

  # #add_post
  #   takes in an argument of a post and associates that post with the author by telling the post that it belongs to that author (FAILED - 4)
  def add_post(post)
    @posts << post
    post.author = self
  end

  def self.all_authors
    @@all_authors
  end

  # #add_post_by_title
  #   takes in an argument of a post title, creates a new post with it and associates the post and author (FAILED - 5)

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
  end

  # .post_count
  #   is a class method that returns the total number of posts associated to all existing authors (FAILED - 6)

  def self.post_count
    all_posts = self.all_authors.select do |author|
      author.posts.length != 0
    end
    all_posts.length
  end

end
