class Song
  attr_accessor :name, :artist, :artist_name
  @@all = []
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
     artist, song = filename.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end
  
  def self.artist_name(name)
    split_files = filename.split(" - ")
    name = split_files[1]
    new_artist = self.new(name)
  end
  
end