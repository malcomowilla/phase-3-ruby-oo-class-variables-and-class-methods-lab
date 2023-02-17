# Song
# instance methods
# #initialize
# takes in three arguments: a name, artist and genre
# #name
# returns the name
# #artist
# returns the artist
# #genre
# returns the genre
# class methods
# class variables
# has a class variable, @@count
# has a class variable, @@artists, that contains all of the artists of existing songs
# has a class variable, @@genres, that contains all of the genres of existing songs
# .count
# is a class method that returns that number of songs created
# .artists
# is a class method that returns a unique array of artists of existing songs
# .genres
# is a class method that returns a unique array of genres of existing songs
# .genre_count
# is a class method that returns a hash of genres and the number of songs that have those genres
# .artist_count
# is a class method that returns a hash of artists and the number of songs that have those artists









class Song
     attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []
   
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count +=1
        @@genres << genre
        @@artists << artist
        
    end

    

   

    def self.count
        @@count
    end


    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
           if genre_count[genre]
            genre_count[genre] +=1
            else
            genre_count[genre] = 1
           
            end
           
        end
        genre_count
    end

 def self.artists
        @@artists.uniq
    end



    def self.artist_count
        artist_count = {}
        @@artists .each do |artist|
            if artist_count [artist]
                artist_count[artist] += 1
            else
                artist_count[artist] = 1
            end
            
    end
    artist_count
end

end



