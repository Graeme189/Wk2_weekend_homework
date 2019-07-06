require('minitest/autorun')
require('minitest/rg')

require_relative('../room')
require_relative('../song')
require_relative('../guests')


class TestRoom < MiniTest::Test

  def setup

    @room1 = Room.new('Curryoake', 1, 8)

    @guest1 = Guests.new('Lola', 10)
    @guest2 = Guests.new('Dixie', 5)

    @song1 = Song.new('Jazz')
    @song2 = Song.new('Blues')

  end

  def test_room_name
    assert_equal('Curryoake', @room1.room)
  end

  def test_guest_count
    @room1.count_guests
    assert_equal(0, @room1.count_guests)
  end

  def test_add_guest
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    assert_equal(2, @room1.count_guests)
  end

  def test_remove_guest
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    @room1.remove_guest(@guest1)
    assert_equal(1, @room1.count_guests)
  end

  def test_add_song_to_room
    @room1.add_song(@song1)
    @room1.add_song(@song2)
    assert_equal(2, @room1.count_songs)
  end

  def test_room_under_capacity
    @room1.add_guest(@guest1)
    assert_equal("You can come in!", @room1.under_capacity)
  end

  def test_room_over_capacity
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    assert_equal("This room is full", @room1.over_capacity)
  end

def test_customer_has_money
  @room1.add_guest(@guest1)
  assert_equal("Welcome!", @room1.enough_funds)
end

def test_customer_has_no_money
  @room1.add_guest(@guest2)
  assert_equal("Bugger off skinto", @room1.enough_funds)
end
end
