class Song

  attr_accessor  :genre_count, :artist_count
  attr_reader :name, :artist, :genre
  attr_writer  :genre_hash, :artist_hash

  @@count = 0
  @@all = []
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@all << self
    #@@genres << self.genre if(@@genres.include?(self.genre)==false)
    @@genres << genre
    @@artists << artist
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
    @genre_hash = {}
    @genre_count = 0
    @@genres.each do |genre|
      if @genre_hash.has_key?(genre)
        @genre_count+=1
      else
        @genre_count = 1
      end
      @genre_hash[genre] = @genre_count
    end
    @genre_hash
  end

  def self.artist_count
    @artist_hash = {}
    @artist_count = 0
    @@artists.each do |artist|
      if @artist_hash.has_key?(artist)
        @artist_count += 1
      else
        @artist_count = 1
      end
      @artist_hash[artist] = @artist_count
    end
    @artist_hash
  end
end
