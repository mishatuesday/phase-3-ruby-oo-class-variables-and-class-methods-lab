require 'pry'

class Song
    @@count = 0
    @@artists = []
    @@genres = []

    attr_reader :name, :artist, :genre

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
    def self.artists
        @@artists.uniq
    end
    def self.genres
        @@genres.uniq
    end
    def self.genre_count
        Hash[@@genres.group_by {|x| x}.map {|k,v| [k,v.count]}]
    end
    def self.artist_count
        Hash[@@artists.group_by {|x| x}.map {|k,v| [k,v.count]}]
    end

end