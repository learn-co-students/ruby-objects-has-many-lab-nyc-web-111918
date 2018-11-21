require 'pry'

class Author
  attr_accessor :name, :posts
  @@all=[]
  def initialize(name)
    @name=name
    @posts=[]
    @@all << self
  end
  def add_post(post)
    post.author=self
    @posts << post
  end
  def add_post_by_title(postname)
    post=Post.new(postname)
    add_post(post)
  end
  def self.post_count
    count=0
    @@all.each do |author|
      count=count+author.posts.length
    end
    count
  end
end
