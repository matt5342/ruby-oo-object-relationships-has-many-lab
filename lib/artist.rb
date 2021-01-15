class Artist
    @@songs = []
    attr_accessor :name, :song
    def initialize(name)
        @name = name
    end
    def songs
        Song.all.select {|song| song.artist == self}
    end
    def add_song(song)
        @@songs << song
        song.artist = self
    end
    def add_song_by_name(name)
        song = Song.new(name)
        @@songs.push(song)
        song.artist = self
    end
    def self.song_count
        Song.all.count
    end
end