class Author
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def add_post(new_post)
    puts "post title: #{new_post.title}"
    new_post.author = self
  end

  def posts
    Post.all.select { |post| post.author == self }
  end

  # def add_post(new_post)
  #   new_post.author = self
  # end

  def add_post_by_title(title)
    Post.new(title, self)
  end

  def self.post_count
    Post.all.select { |post| post.author.class == Author}.length
  end

end
