class Author
    attr_accessor :name

    def initialize(name)
        @name = name
        @author_posts = []
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def add_post(post)
        @author_posts << post
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end

    def self.post_count
        Post.all.count
    end



end