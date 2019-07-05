require('minitest/autorun')
require('minitest/rg')

require_relative('../room')
require_relative('../song')
require_relative('../guests')


class TestRoom < MiniTest::Test

  def setup
  @song1 = Song.new('Punk Song')
  @song2 = Song.new('Jazz Song')
  @song3 = Song.new('EDM Song')

  @songs = [@song1, @song2, @song3]

  @guest1 = Guests.new('Dixie')
  @guest2 = Guests.new('Lola')

  @guests = [@guest1, @guest2]

  @room1 = Room.new('Room One')

  end

  def test_room_name
    assert_equal('Room One', @room1.room)
  end

  def test_song_name
    assert_equal('Punk Song', @songs[0].song)
  end

  def test_guest_name
    assert_equal('Lola', @guests[1].guest)
  end

end
