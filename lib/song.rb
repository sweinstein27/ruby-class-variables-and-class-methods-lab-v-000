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
    if !@@genres.include?(genre)
      @@genres << genre
    elsif !@@artists.include?(artist)
      @@artists << artist
    end
  end

  def count
    return @@count
  end

  def genre
    return @@genres
  end

  def artist
    return @@artists
  end

  def genre_count
    @@genres.to_histogram
  end

  def artist_count
    @@artists.to_histogram
  end

end
