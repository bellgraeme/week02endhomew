require('MiniTest/autorun')
require('MiniTest/rg')
require_relative("../guest.rb")

class TestGuest < MiniTest::Test

def setup

  @guest = Guest.new("Joe", "Purple Rain", 50)

end

def test_guest_name
  assert_equal("Joe", @guest.name)  
end


def test_guest_has_money
  assert_equal(50, @guest.money)
end

def test_payment
  assert_equal(45, @guest.payment(5))
end
def test_cheer
  assert_equal("Dis iz ma Fav!", @guest.cheer)
end

def test_get_name
  assert_equal("Joe", @guest.get_name)
end

end