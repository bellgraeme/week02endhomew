require('pry')
require('MiniTest/autorun')
require('MiniTest/rg')
require_relative("../guest.rb")
require_relative("../group.rb")

class TestGroup < MiniTest::Test

  def setup

    @group = Group.new(200)

    @guest1 = Guest.new("Joe", "Purple Rain", 50)
    @guest2 = Guest.new("Bob", "Come as you are", 3)
    @guest3 = Guest.new("Karl", "November Rain", 78)
    @guest4 = Guest.new("Sally", "Smooth Criminal", 34)
    @guest5 = Guest.new("Barbra", "Like a Virgin", 99)
    @guest6 = Guest.new("Helen", "You're my Hero", 5)

    @group.add_guest(@guest1, @guest2, @guest3, @guest4,@guest5,@guest6)

  end

  def test_can_add_guest_to_group
    example = Group.new(200)
    example.add_guest(@guest1, @guest2, @guest3, @guest4,@guest5,@guest6)
    assert_equal(6, example.guests.length)
  end

  def test_can_remove_guest_from_group
    
    @group.remove_guest("Joe")
    assert_equal(5, @group.guests.length)
  end

  def test_group_money
    assert_equal(269, @group.total_map)
  end

end






