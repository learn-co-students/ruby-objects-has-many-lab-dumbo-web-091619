

class Song
  
  @@all = []
  
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def artist_name
    if !@artist 
      return nil
    else
      @artist.name
    end
  end
  
  def self.all
    @@all
  end 
end
