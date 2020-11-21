class Artist
  attr_reader :name, :albums

  def initialize(name)
    @name = name
    @albums = []
  end

  def add_album album
    @albums << album
  end
end

class Album
  attr_reader :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song song
    @songs << song
  end
end

class Song
  attr_reader :name, :duration

  def initialize(name, duration)
    @name = name
    @duration = duration
  end

end

artists = []

mavashi = Artist.new 'Misha Mavashi'
limpbizkit = Artist.new 'Limp Bizkit'

artists << mavashi
artists << limpbizkit

albums1 = Album.new 'Album Misha Mavashi'
albums2 = Album.new 'Album Limp Bizkit'

mavashi.add_album albums1
limpbizkit.add_album albums2

song1 = Song.new '4 uncii', '3:49'
song2 = Song.new 'Pomnit dolzhen', '3:48'
song3 = Song.new 'Na veka', '3:04'

albums1.add_song song1
albums1.add_song song2
albums1.add_song song3

song4 = Song.new 'Rollin', '3:33'
song5 = Song.new 'Break Stuff', '2:46'
song6 = Song.new 'My Way', '4:32'

albums2.add_song song4
albums2.add_song song5
albums2.add_song song6


artists.each do |artist|
  puts "Artist: #{artist.name}"

  artist.albums.each do |album|
    puts "Album: #{album.name}"
    puts "Songs in this album:"

    album.songs.each do |song|
      puts "--#{song.name}, #{song.duration}"
    end
  end
  puts '=================================================='
end