require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')
require_relative('../room.rb')

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("David", 33, 100, "Sweet Caroline", "Neil Diamond")

  end

  def test_get_guest_name
    assert_equal("David", @guest1.name)
  end

  def test_get_guest_age
    assert_equal(33, @guest1.age)
  end

  def test_get_guest_wallet_amount
    assert_equal(100, @guest1.wallet)
  end

  def test_get_guest_favourite_song
    assert_equal("Sweet Caroline", @guest1.favourite_song)
  end

  def test_get_guest_favourite_artist
    assert_equal("Neil Diamond", @guest1.favourite_artist)
  end


end
