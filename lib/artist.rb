class Artist

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def add_song(song_name)
        song_name.artist = self

    end

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        new_song.artist = self
    end

    def self.song_count
        Song.all.size
    end
end