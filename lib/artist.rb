class Artist

  attr_accessor :name, :songs, :song
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
   @name = name
   @songs = []
   save
  end

  def add_song(song)
    @songs << song
  end

  def self.find_artist(name)
    self.all.find {|artist| artist.name == name}
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    find_artist(name) ? find_artist(name) :  Artist.new(name)
  end

  def print_songs
    i = 0
    j = self.songs.length - 1
    while i <= j
    puts "#{self.songs[i].name}"
    i += 1
    end
  end





end
