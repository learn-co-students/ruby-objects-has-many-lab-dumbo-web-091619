class Author 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name) 
    @name = name
    @@all << self 
  end 
  
  def posts 
    Post.all.select do |post_instance|
      post_instance.author == self
    end
  end 
  
  def add_post (post_instance)
    post_instance.author = self
  end 
  
  def add_post_by_title(title)
       new_post = Post.new(title) 
       new_post.author = self
  end
  
  
  def self.post_count
    Post.all.count
  end 
  
end