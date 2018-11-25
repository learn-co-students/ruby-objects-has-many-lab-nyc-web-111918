require "pry"
class Author
  attr_accessor :name
  @@authors = []

  def initialize(name)
    @name = name
    @posts = []
    @@authors << self
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
  end

  def self.post_count
    count = 0
    @@authors.each do |author|
      count += author.posts.length
    end
    count
  end

  def posts
    @posts
  end



end  # end of Author class
