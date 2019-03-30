require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../karaoke.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class KaraokeTest < MiniTest::Test

  def setup

    @karaoke = Karaoke.new("CodeClan Caraoke", 1000.0, [@rooms], 10.0)

    @rooms = [@classics_room, @pop_room]

    @classics_room = Room.new("Classics", 10, [@song1, @song2, @song3], [])
    @pop_room = Room.new("Pop", 10, [@song4, @song5, @song6], [])

    @song1 = Song.new("Sweet Caroline", "Neil Diamond")
    @song2 = Song.new("My Way", "Frank Sinatra")
    @song3 = Song.new("Bohemian Rhapsody", "Queen")
    @song4 = Song.new("Wannabe", "Spice Girls")
    @song5 = Song.new("Baby One More Time", "Britney Spears")
    @song6 = Song.new("Firework", "Katy Perry")



  end


  def test_get_karaoke_bar_name
    assert_equal("CodeClan Caraoke", @karaoke.name)
  end

  def test_get_till_total
    assert_equal(1000.0, @karaoke.till)
  end

  def test_get_entry_fee
    assert_equal(10.0, @karaoke.entry_fee)
  end

  def test_receive_entry_fee
    @karaoke.receive_entry_fee
    assert_equal(1010.0, @karaoke.till)
  end



end
