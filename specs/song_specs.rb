require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class SongTest < MiniTest::Test

  def setup

    @song1 = Song.new("Sweet Caroline")
    @song2 = Song.new("My Way")
    @song3 = Song.new("Bohemian Rhapsody")
    @song4 = Song.new("Wannabe")
    @song5 = Song.new("Baby One More Time")
    @song6 = Song.new("Firework")


  end

  def test_get_song_title
    assert_equal("My Way", @song2.title)
  end





end
