require 'pry'
class Post

    @@all = []
    attr_accessor :title, :author, :author_name
    def initialize(title)
        @title = title
        save
    end
    def save
        @@all.push(self)
    end

    def self.all
        @@all
    end
    def author_name
        if self.author == nil
            nil
        else
            self.author.name
        end
    end


end
