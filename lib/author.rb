
class Author
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_post(post)
        post.author = self
        post
    end

    def add_post_by_title(post_title)
        post = Post.new(post_title)
        post.author = self
        post
    end

    def posts
        posts = Post.all.select do |post|
            post.author == self
        end
        posts
    end

    def self.post_count
        count = 0
        @@all.each do |author|
           count += author.posts.length
        end
        count
    end

end