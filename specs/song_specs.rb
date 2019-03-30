require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class SongTest < MiniTest::Test

  def setup

    @song1 = Song.new("Sweet Caroline", "Neil Diamond")
    @song2 = Song.new("My Way", "Frank Sinatra")
    @song3 = Song.new("Bohemian Rhapsody", "Queen")
    @song4 = Song.new("Wannabe", "Spice Girls")
    @song5 = Song.new("Baby One More Time", "Britney Spears")
    @song6 = Song.new("Firework", "Katy Perry")


  end

  def test_get_song_title
    assert_equal("My Way", @song2.title)
  end

  def test_get_song_artist
    assert_equal("Queen", @song3.artist)
  end



end
