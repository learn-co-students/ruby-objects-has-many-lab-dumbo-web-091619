
class Artist

  attr_accessor :name
  
  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    new_song.artist = self
  end

  def self.song_count
    songs_w_artist = Song.all.select { |song_instance| song_instance.artist_name != nil }
    songs_w_artist.length
  end
  
  def songs 
    Song.all.select { |song_instance| song_instance.artist == self }
  end 

end

