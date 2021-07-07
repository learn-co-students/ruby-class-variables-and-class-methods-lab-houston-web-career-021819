class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name =name
    @artist = artist
    @genre = genre

    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    output = Hash.new(0)
    @@genres.each do |genre|
      output[genre] += 1    if genre != nil
    end
    output
  end

  def self.artist_count
    output = Hash.new(0)
    @@artists.each do |artist|
      output[artist] += 1    if artist != nil
    end
    output
  end


end
