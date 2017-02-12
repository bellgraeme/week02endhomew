require('pry')
require_relative('./guest.rb')
require_relative('./group.rb')
require_relative('./host.rb')

class  Room

  attr_reader :capacity, :occupancy, :price, :song_list, :group

  def initialize(capacity, price)
    @capacity = capacity
    @occupancy = false
    @price = price
    @song_list = [ ]
    @group = group
  end

  def update_status
    if @occupancy == false
      return @occupancy = true
    elsif @occupancy == true
      return @occupancy = false
    end
  end

def add_song(*song)
  song.each {|item| @song_list << song} 
end

def add_group(group)
  @group = group
  update_status
end

def remove_group
  @group = "Empty"
  update_status
end

def room_fit(group)
  if group.guests.length <= @capacity
    return true
  else
    false
  end
end
end

#     @group = Group.new(200)

#     @guest1 = Guest.new("Joe", "Purple Rain", 50)
#     @guest2 = Guest.new("Bob", "Come as you are", 3)
#     @guest3 = Guest.new("Karl", "November Rain", 78)
#     @guest4 = Guest.new("Sally", "Smooth Criminal", 34)
#     @guest5 = Guest.new("Barbra", "Like a Virgin", 99)
#     @guest6 = Guest.new("Helen", "You're my Hero", 5)

#     @group.add_guest(@guest1, @guest2, @guest3, @guest4,@guest5,@guest6)

#     @room1 = Room.new(8, 200)
#     @room2 = Room.new(6, 180)
#     @room3 = Room.new(4, 100)
#     @room4 = Room.new(5, 120)
#     @room5 = Room.new(6, 180)
#     @room6 = Room.new(7, 166)
#     @room7 = Room.new(4, 110)
#     @room8 = Room.new(3, 3000000)

#     @room1.add_group(@group)

#     @host = Host.new(400)
#     @host.add_room(@room2, @room3, @room4, @room5, @room6, @room7, @room8,@room1)
# puts @room1
# end