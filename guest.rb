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

  def pay_entry_fee(entry_fee)
    @wallet -= entry_fee
  end

  # def does_it_have_my_song(room, guest)
  #   fav_song = @room.playlist.map {|song| song.title == @favourite_song}
  #   if fav_song.length == 0
  #     return "boo!"
  #   else
  #     return "Woohoo!"
  #   end
  # end

end
