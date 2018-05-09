class Song
  attr_accessor :name, :artist, :genre

  @@count = 0

  @@genres = []
  @@artists = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end


  def count
    return self
  end

  def genres
    return @@genres
  end

  def artists
    return @@artists
  end

  def genre_count
    @@genres.to_histogram
  end

  def artist_count
    @@artists.to_histogram
  end

end
