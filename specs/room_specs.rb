require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guest.rb')
require_relative('../karaoke.rb')


class RoomTest < MiniTest::Test

  def setup
    @song1 = Song.new("Sweet Caroline", "Neil Diamond"),
    @song2 = Song.new("My Way", "Frank Sinatra"),
    @song3 = Song.new("Bohemian Rhapsody", "Queen")

    @classics_room = Room.new("Classics", 25, [@song1, @song2, @song3], [])





    @guest1 = Guest.new("David", 33, 100.0, "Sweet Caroline", "Neil Diamond")
    @guest2 = Guest.new("Beth", 27, 50.0, "Reach", "S Club 7")


  end

  def test_get_room_name
    assert_equal("Classics", @classics_room.name)
  end

  def test_get_room_capacity
    assert_equal(25, @classics_room.capacity)
  end

  def test_get_room_occupants
    assert_equal(0, @classics_room.occupants.length)
  end

  def test_add_guest_to_room
    @classics_room.add_guest_to_room(@classics_room, @guest1)
    assert_equal(1, @classics_room.occupants.length)
  end

  def test_remove_guest_from_room
    # add 2 guests, then remove 1
    @classics_room.add_guest_to_room(@classics_room, @guest1)
    @classics_room.add_guest_to_room(@classics_room, @guest2)
    @classics_room.remove_guest_from_room(@classics_room)

    assert_equal(1, @classics_room.occupants.length)
  end


end