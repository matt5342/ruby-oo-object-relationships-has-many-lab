class Song
    @@all = []
    attr_accessor :name, :artist, :artist_mame
    def initialize(name)
        @name = name
        save
    end
    def save
        @@all.push(self)
    end
    def self.all
        @@all
    end
    def artist_name
        if self.artist == nil
            nil
        else
            self.artist.name
        end
    end
end