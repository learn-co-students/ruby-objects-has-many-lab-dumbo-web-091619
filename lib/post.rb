
class Post

  @@all = []
  
  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @@all.push(self)
  end

 def self.all 
   @@all
 end 

 def author_name
    if !@author
      return nil
    else
      @author.name
    end
 end 





end 

