class Guest

  attr_reader :name, :age, :favourite_song
  attr_accessor :wallet

  def initialize(name, age, wallet, favourite_song)
    @name = name
    @age = age
    @wallet = wallet
    @favourite_song = favourite_song
  end

  def pay_entry_fee(entry_fee)
    @wallet -= entry_fee
  end



  # def does_it_have_my_song(guest)
  #   # fav_song = @playlist.map {|song| song == guest.favourite_song}
  #   # binding.pry
  #   for song in playlist
  #
  #     if song.title == guest.favourite_song
  #       return "Woohoo!"
  #     else
  #       return "Boo!"
  #     end
  #   end
  # end

end
