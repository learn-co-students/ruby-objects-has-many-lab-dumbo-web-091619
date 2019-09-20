require 'pry'

class Artist
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_song(song)
        song.artist = self
        song
    end

    def add_song_by_name(song_name)
       song = Song.new(song_name)
       song.artist = self
       song
    end

    def songs
       songs = Song.all.select do |song|
            song.artist == self
       end
       songs
    end

    def self.song_count
        count = 0
        @@all.each do |artist|
            count += artist.songs.length
        end
        count
    end

end