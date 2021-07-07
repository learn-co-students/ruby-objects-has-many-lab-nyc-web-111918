require'pry'
class Author

  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = [] #posts that belong to an author
  end

  def posts
    @posts
  end

#takes in an argument of a post
#associates that post with the author by telling the post
# that it belongs to that author.
  def add_post(post)
    @posts.push(post) #  or @posts << post
    #hey author, you belong to a post.
    post.author = self
  end

  #1_ takes in an argument of a post name
  def add_post_by_title(post_name)
    #creates a new post with it
    #new_post is a new post instance
    new_post = Post.new(post_name)
    @posts << new_post #pushes the new post into the @posts array
    #and associates the post and author
    new_post.author = self
    #another way to do this is to call the add_post method.
    #add_post(new_post)
    # binding.pry
  end

#returns the total number of posts associated to all existing authors
  def self.post_count #class method
    #count all the posts in the @@all array in the post class.
    Post.all.count
  end

end #end of Author Class
