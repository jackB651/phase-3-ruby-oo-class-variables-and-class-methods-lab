require "pry"
class Song
  attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
 
    def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count = @@count + 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  

  def Song.artists
    @@artists.uniq
  end

  def Song.genres
    @@genres.uniq
  end

  def Song.genre_count
    a = {}
    @@genres.each do |gen|
      if a[gen] == nil
        a[gen] = 1
      else 
        a[gen] += 1
      end
    end
    return a
  end

  def Song.artist_count
    a = {}
    @@artists.each do |art|
      if a[art] == nil
        a[art] = 1
      else 
        a[art] += 1
      end
    end
    return a
  end
end