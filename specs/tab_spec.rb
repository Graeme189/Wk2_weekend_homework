require('minitest/autorun')
require('minitest/rg')

require_relative('../guests')
require_relative('../room')
require_relative('../tab')

class TestTab < MiniTest::Test

  def setup
     @tab1 = Tab.new("Lola", 0, 20.00)
   end

   def test_add_to_tab
     @tab1.add_to_tab(@tab1.expenditure)
     assert_equal(20.00, @tab1.tab)
   end

end
