require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guest.rb')
require_relative('../karaoke.rb')
require('pry')


class RoomTest < MiniTest::Test

  def setup
    @song1 = Song.new("Sweet Caroline"),
    @song2 = Song.new("My Way"),
    @song3 = Song.new("Bohemian Rhapsody")

    @song4 = Song.new("Delilah")

    @classics_room = Room.new("Classics", 10, [@song1, @song2, @song3], [])

    @pop_room = Room.new("Pop", 1, [@song4], [@guest1])

    @guest1 = Guest.new("David", 33, 100.0, "Sweet Caroline")
    @guest2 = Guest.new("Beth", 27, 50.0, "Reach")

  end

  def test_get_room_name
    assert_equal("Classics", @classics_room.name)
  end

  def test_get_room_capacity
    assert_equal(10, @classics_room.capacity)
  end

  def test_get_room_occupants
    assert_equal(0, @classics_room.occupants.length)
  end

  def test_playlist_length
    playlist = @classics_room.playlist.length
    assert_equal(3, playlist)
  end

  def test_get_playlist
    assert_equal( [@song1, @song2, @song3], @classics_room.playlist)
  end

  def test_add_guest_to_room
    @classics_room.add_guest_to_room(@guest1)
    assert_equal(1, @classics_room.occupants.length)
  end

  def test_remove_guest_from_room
    # add 2 guests, then remove 1
    @classics_room.add_guest_to_room(@guest1)
    @classics_room.add_guest_to_room(@guest2)
    @classics_room.remove_guest_from_room()

    assert_equal(1, @classics_room.occupants.length)
  end

  def test_add_to_full_room
    @pop_room.add_guest_to_room(@guest2)
    @pop_room.add_guest_to_room(@guest1)
    result = @pop_room.add_guest_to_room(@guest2)
    assert_equal("Room full", result)
  end

  def test_add_song_to_playlist
    @classics_room.add_song_to_playlist(@song4)
    playlist = @classics_room.playlist.length
    assert_equal(4, playlist)
  end

  # def test_happy_if_room_has_fav_song
  #   result = @classics_room.does_it_have_my_song(@guest1)
  #   assert_equal("Woohoo!", result)
  # end



end
