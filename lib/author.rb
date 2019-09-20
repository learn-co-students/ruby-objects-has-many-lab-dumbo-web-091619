
class Author 

 attr_accessor :name
 
 @@all = []
 
 def initialize(name)
  @name = name
 end 

  def posts 
    Post.all.select { |post_instance| post_instance.author == self }
  end 

  def add_post(post_instance)
    post_instance.author = self
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
  end

  def self.post_count
    posts_w_author = Post.all.select { |post_instance| post_instance.author != nil || [] }
    posts_w_author.length
  end

end 
