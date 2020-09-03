class Genre
    @@all = []
    attr_accessor :name, :artist, :genre

    def initialize(name)
        @name=name
        @@all<<self
    end
    
    def songs
        Song.all.select {|song| song.genre == self}
    end

    def self.all
        @@all
    end
    
    def artists
      songs.collect {|song| song.artist}
    end

end