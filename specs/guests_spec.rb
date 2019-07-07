require('minitest/autorun')
require('minitest/rg')

require_relative('../guests')
require_relative('../song')

class TestGuests < MiniTest::Test

  def setup

    @guest1 = Guests.new("Dixie", 100.00, "Jazz")
    @guest2 = Guests.new("Lola", 12.00, "Blues")
    @song1 = Song.new("Jazz")
    @song2 = Song.new("Blues")

  end

  def test_guest_name
    assert_equal("Dixie", @guest1.guest())
  end

  def test_guest_has_money
    assert_equal(100.00, @guest1.cash())
  end

  def test_favourite_song
    assert_equal(@song1.song(), @guest1.favourite_song())
    assert_equal(@song2.song(), @guest2.favourite_song())
  end
  
end
