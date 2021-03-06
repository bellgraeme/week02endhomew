require('pry')
require('MiniTest/autorun')
require('MiniTest/rg')
require_relative("../guest.rb")
require_relative("../group.rb")
require_relative("../host.rb")
require_relative("../room.rb")

class TestHost < MiniTest::Test

  def setup

    @group = Group.new(200)
    @group2 = Group.new(100)

    @guest1 = Guest.new("Joe", "Purple Rain", 50)
    @guest2 = Guest.new("Bob", "Come as you are", 3)
    @guest3 = Guest.new("Karl", "November Rain", 78)
    @guest4 = Guest.new("Sally", "Smooth Criminal", 34)
    @guest5 = Guest.new("Barbra", "Like a Virgin", 99)
    @guest6 = Guest.new("Helen", "You're my Hero", 5)

    @group.add_guest(@guest1, @guest2, @guest3, @guest4,@guest5,@guest6)

    @room1 = Room.new(8, 200)
    @room2 = Room.new(6, 180)
    @room3 = Room.new(4, 100)
    @room4 = Room.new(5, 120)
    @room5 = Room.new(6, 180)
    @room6 = Room.new(7, 166)
    @room7 = Room.new(4, 110)
    @room8 = Room.new(3, 3000000)

    @room1.add_group(@group)

    @host = Host.new(400)
    @host.add_room(@room2, @room3, @room4, @room5, @room6, @room7, @room8,@room1)
  end

  def test_has_money
    assert_equal(400, @host.money)
  end

  def test_can_add_room
    assert_equal(8, @host.rooms.length)
  end

  def test_availabilty
    assert_equal(true, @host.availabilty )
  end

  def test_take_booking
   assert_equal("Thanks for the money, see you on the Date",@host.take_booking(@room1, @group))
  end

  def test_group_has_paid
    @host.take_booking(@room1, @group)
    assert_equal(0,@group.pot)
  end
  def test_group_can_not_afford
    @host.take_booking(@room1, @group2)
    assert_equal("You're skint, come back later",@host.take_booking(@room1, @group2))
  end

  def test_take_group_payment
    @host.take_group_payment(@room1, @group)
    assert_equal(600, @host.money)
    assert_equal(0, @group.pot)
  end

  def test_take_guest_payment
    @host.take_guest_payment(@guest1, 5)
    assert_equal(45, @guest1.money)
    assert_equal(405,@host.money)
  end
end

















