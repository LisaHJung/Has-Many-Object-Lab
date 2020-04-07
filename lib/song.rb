require 'pry'
class Song
    attr_accessor :name, :artist
  
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end
  
    # objective
        # Check to see if a song instance has artist instance attached to it
        # if self.artist, it should return the name of the artist
            # we can use Ruby chain as song.artist yield an artist instance 
                # so we can chain it with .name to get @name from the isntance.
        # if the song in question does not include an artist instance, then it returns nil. 
    def artist_name
        if self.artist
            return self.artist.name
        else
            return nil
        end
    end
  end
