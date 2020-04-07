require 'pry'

class Post
  attr_accessor :title, :author

  @@all =[]

  def initialize (title)
    @title=title
    @@all << self
  end 

  def self.all
    @@all
  end 

    # objective
        # Check to see if a post instance has author instance attached to it
        # if self.author, it should return the name of the artist
            # we can use Ruby chain as song.author yield an author instance 
                # so we can chain it with .name to get @name from the instance.
        # if the post in question does not include an author instance, then it returns nil.
  def author_name
    if self.author
        return self.author.name 
    else
      return nil
    end
  end 
end 
