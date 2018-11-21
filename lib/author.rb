class Author
  attr_accessor :name, :posts

  @@all = 0
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
    @@all += 1
  end

  def add_post_by_title(post)
    new = Post.new(post)
    add_post(new)
  end

  def self.post_count
     @@all
  end
end
