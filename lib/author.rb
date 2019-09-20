class Author

    attr_accessor :name
    
    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select do |post|
            post.author == self
        end
    end

    def add_post(post_name)
        post_name.author = self
    end

    def add_post_by_title(post_title)
        new_post = Post.new(post_title)
        new_post.author = self
    end

    def self.post_count
        Post.all.size
    end
end