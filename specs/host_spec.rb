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

    @host = Host.new(400)

  end

  def test_has_money
    assert_equal(400, @host.money)
  end

  def test_can_add_room
    @host.add_room(@room2,@room3,@room4,@room5,@room6,@room7,@room8,@room1)
    assert_equal(8, @host.rooms.length)

  end
end
















