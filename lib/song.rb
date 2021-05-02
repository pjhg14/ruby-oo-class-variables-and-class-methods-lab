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
        @@artists << artist
        @@genres << genre
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

    def self.artist_count
        out = {}

        @@artists.each do |artist|
            if out[artist]
                out[artist] +=1
            else
                out[artist] = 1
            end
        end

        out
    end

    def self.genre_count
        out = {}

        @@genres.each do |genre|
            if out[genre]
                out[genre] += 1
            else
                out[genre] = 1
            end
        end

        out
    end
end