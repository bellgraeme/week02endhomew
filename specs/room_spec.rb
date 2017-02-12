require('pry')
require('MiniTest/autorun')
require('MiniTest/rg')
require_relative("../guest.rb")
require_relative("../group.rb")
require_relative("../host.rb")
require_relative("../room.rb")

class TestRoom < MiniTest::Test

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

  end

    def test_has_capacity
        assert_equal(8, @room1.capacity)
    end

    def test_has_price
        assert_equal(200, @room1.price)
    end

    def test_status_updated
        assert_equal(true, @room1.update_status)
    end

    def test_song_list_has_songs
        @room1.add_song("all we know", "second sun", "famous")
        assert_equal(3, @room1.song_list.length)
    end

    def test_room_has_group
        @room1.add_group(@group)
        assert_equal(@group, @room1.group)
    end

    def test_status_update
        @room1.add_group(@group)
        assert_equal(true, @room1.occupancy)
    end

    def test_remove_group
        @room1.add_group(@group)
        @room1.remove_group
        assert_equal("Empty" ,@room1.group)
        assert_equal(false, @room1.occupancy)
    end

    def test_room_capacity_for_group
        assert_equal(true,@room1.room_fit(@group))

    end

  
end