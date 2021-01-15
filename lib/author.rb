require 'pry'
class Author

    @@posts = []
    attr_accessor :name
    def initialize(name)
        @name = name
    end
    def posts
        Post.all.select {|post| post.author == self}
    end
    def add_post(post)
        @@posts.push(post)
        post.author = self
    end
    def add_post_by_title(title)
        post = Post.new(title)
        @@posts.push(post)
        post.author = self
    end
    def self.post_count
        Post.all.count
    end
end