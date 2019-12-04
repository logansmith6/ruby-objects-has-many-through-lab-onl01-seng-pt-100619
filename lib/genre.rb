require 'pry'

class Genre

  attr_accessor :name, :songs, :artists
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|pick| pick.genre == self}
  end

  def artists
    songs.collect(&:artist)
    #binding.pry
  end

end
