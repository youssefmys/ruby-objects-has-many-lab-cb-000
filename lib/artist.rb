require_relative "song.rb"

class Artist
  attr_accessor :songs, :name
  @@song_count = 0 
  
  def initialize(name)
    @name = name
    @songs = []
  end

  def self.song_count
    @@song_count
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    @songs << song
    @@song_count += 1 
  end


  def add_song(song)
    song.artist =  self
    @songs << song
    @@song_count += 1 
  end


  
end
