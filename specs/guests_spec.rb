require('minitest/autorun')
require('minitest/rg')

require_relative('../guests')

class TestGuests < MiniTest::Test

  def setup
    @guest1 = Guests.new("Dixie", 10.00)
  end

  def test_guest_name
    assert_equal("Dixie", @guest1.guest())
  end

def test_guest_has_money
  assert_equal(10.00, @guest1.cash())
end

end
