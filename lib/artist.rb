
class Artist
  attr_accessor :name
  @@artists = []

  def initialize(name)
    @name = name
    @@artists << self
  end

  def self.all
    @@artists
  end

  def new_song(song, genre)
    Song.new(song, self, genre)

  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    songs.map do |song|
      song.genre
    end
  end

end
