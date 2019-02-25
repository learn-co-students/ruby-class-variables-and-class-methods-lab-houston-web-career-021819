require 'pry'
class Song

  attr_accessor :name, :artist, :genre

  @@all = []
  @@genres = []
  @@artists = []
  @@count = 0
  @@genre_count = {}
  @@artist_count = {}


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
    @@count = @@count + 1
    @@genres << genre
    @@artists << artist
      if @@genre_count[genre] == nil
        @@genre_count[genre] = 1
      else
    @@genre_count[genre] = @@genre_count[genre] + 1
      end
      if @@artist_count[artist] == nil
        @@artist_count[artist] = 1
      else
    @@artist_count[artist] = @@artist_count[artist] + 1
      end
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

def self.genres
  @@genres.uniq
end


def self.genre_count
  @@genre_count
end

def self.genre_count
  @@genre_count
end

def self.artist_count
  @@artist_count
end

end
