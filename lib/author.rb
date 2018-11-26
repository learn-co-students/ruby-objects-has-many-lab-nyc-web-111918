require 'pry'


class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
   @posts
  end

  def add_post(post)
    # binding.pry
    #post is passed in, @posts is the array of posts. this is instance for this class
    @posts << post
    #argument passed in, artist is read write
    post.author = self
  end

   def add_post_by_title(post)
     #use post class new for post to add to this author instance.  new post initializes to add to post class array so we cna still count it.
    new_author_post = Post.new(post)
    add_post(new_author_post)
  end

   def self.post_count
    #binding.pry
    Post.all.count
  end


end # end of author class
