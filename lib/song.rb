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
      genre_hash = {}
      @@genres.each do |genre|
        if genre_hash[genre]
          genre_hash[genre] += 1
        else
          genre_hash[genre] = 1
        end
      end
      genre_hash
    end
    def self.artist_count
      artist_hash = {}
      @@artists.each do |artist|
        if artist_hash[artist]
          artist_hash[artist] += 1
        else
          artist_hash[artist] = 1
        end
      end
      artist_hash
    end
  end
  

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
puts ninety_nine_problems.name # => "99 Problems"
puts ninety_nine_problems.artist # => "Jay-Z"
puts ninety_nine_problems.genre # => "rap"


puts Song.count # => 1
puts Song.genres # => ["rap"]
puts Song.artists # => ["Jay-Z"]
puts Song.genre_count # => {"rap" => 1}
puts Song.artist_count # => {"Jay-Z" => 1}