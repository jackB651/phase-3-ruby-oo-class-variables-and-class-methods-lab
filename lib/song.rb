require "pry"
class Song
  attr_accessor :name, :artist, :genre
    @@count = 0
    @@genre = []
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genre << genre
  end
  def count
    @@count
  end
  def genre
    @genre
  end
end