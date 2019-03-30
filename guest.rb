class Guest

  attr_reader :name, :age, :favourite_song, :favourite_artist
  attr_accessor :wallet

  def initialize(name, age, wallet, favourite_song, favourite_artist)
    @name = name
    @age = age
    @wallet = wallet
    @favourite_song = favourite_song
    @favourite_artist = favourite_artist
  end


end
