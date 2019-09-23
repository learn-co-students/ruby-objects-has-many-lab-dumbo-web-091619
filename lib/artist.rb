require 'pry'

class Artist
    attr_accessor :name


    def initialize(name, song = nil)
        @name = name
        @songs =[]
    end

    def songs
        Song.all.select {|song| song.artist == self }
        # @@songs_by_artists.concat(songs)
    end

    def add_song(song)
        self.songs << song
        song.artist = self
    end
    
    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
        @songs << song
        # binding.pry
    end
    
    
    def self.song_count
        Song.all.length
        # binding.pry
    end
end