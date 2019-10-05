class Song
    
    attr_reader :name
    attr_accessor :artist
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_song(song)
       new_song = Song.new(song)
       new_song.artist = artist
      
    end
    
    def artist_name
        if artist
            artist.name
        else 
            nil
         end
    end

   
    

end