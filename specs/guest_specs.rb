require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')
require_relative('../room.rb')
require_relative('../karaoke.rb')
require('pry')

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("David", 33, 100.0, "Sweet Caroline", "Neil Diamond")
    @karaoke = Karaoke.new("CodeClan Caraoke", 1000.0, [@rooms], 10.0)

  end

  def test_get_guest_name
    assert_equal("David", @guest1.name)
  end

  def test_get_guest_age
    assert_equal(33, @guest1.age)
  end

  def test_get_guest_wallet_amount
    assert_equal(100.0, @guest1.wallet)
  end

  def test_get_guest_favourite_song
    assert_equal("Sweet Caroline", @guest1.favourite_song)
  end

  def test_get_guest_favourite_artist
    assert_equal("Neil Diamond", @guest1.favourite_artist)
  end

  def test_pay_entry_fee
    @guest1.pay_entry_fee(@karaoke.entry_fee)
    assert_equal(90.0, @guest1.wallet)
  end


  # def test_happy_if_room_has_fav_song
  #   result = @classics_room.does_it_have_my_song(@classics_room.playlist, @guest1)
  #   assert_equal("Woohoo!", result)
  # end

end
