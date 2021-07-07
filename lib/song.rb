require'pry'
class Song

  attr_accessor :name, :artist

@@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if self.artist == nil #if the artist name is nothing,
      nil #return nil
    else
      self.artist.name #knows the name of the artist.
    end
    #binding.pry
  end

end #end of Song Class
