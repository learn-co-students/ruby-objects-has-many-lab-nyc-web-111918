require'pry'
require_relative "./artist.rb"
require_relative "./song.rb"
require_relative "./author.rb"
require_relative "./post.rb"

fidlar = Artist.new("Fidlar")
song_1 = Song.new("West Coast")
artist_2 = Artist.new("Evlis")
song_2 = Song.new("Hound Dog")


binding.pry
