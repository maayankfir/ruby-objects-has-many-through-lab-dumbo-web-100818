class Genre
attr_accessor :name

@@genres = []
 def initialize(name)
   @name = name
   @@genres << self

 end

 def self.all
   @@genres
 end

 def songs
   Song.all.select do |song|
     song.genre == self
   end
 end

 def artists
   songs.map do |song|
     song.artist
   end
 end
end
