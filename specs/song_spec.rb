require('minitest/autorun')
require('minitest/rg')

require_relative('../song')

class TestSong < MiniTest::Test

  def setup
    @song1 = Song.new('Jazz')
  end

def test_song_name
  assert_equal('Jazz', @song1.song)
end

end
