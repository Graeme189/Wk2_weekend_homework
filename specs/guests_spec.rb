require('minitest/autorun')
require('minitest/rg')

require_relative('../guests')

class TestGuests < MiniTest::Test

  def setup
    @guest1 = Guests.new("Dixie")
  end

  def test_guest_name
    assert_equal("Dixie", @guest1.guest)
  end

end
