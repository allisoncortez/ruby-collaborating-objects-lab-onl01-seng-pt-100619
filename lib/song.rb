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
  
  def self.new_by_filename(name)
    split_file = name.split(" - ")
    song_name = split_file[1] #I think it was 1, going by memory though
    new_song = self.new(song_name)
    #now do the same with artist
    #and think about associations
    #also think about what they want you to return at the end
  end
  
  def self.artist_name(name)
    split_files = filename.split(" - ")
    name = split_files[1]
    new_artist = self.new(name)
  end
  
end