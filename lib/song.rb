class Song
  attr_accessor :name, :artist, :genre

  @@count = 0

  @@genres = []
  @@artist = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    if !@@genres.include?(genre)
      @@genres << genre
    elsif !@@artist.include?(artist)
      @@artist << artist
  end

  def count
    return @@count
  end

  def genre
    return @@genres
  end

  def artist
    return @@artist
  end

end
