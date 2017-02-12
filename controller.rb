require('pry')
require_relative('guest.rb')
require_relative('group.rb')
require_relative('room.rb')
require_relative('host.rb')
require_relative('viewer.rb')

class Control

	def initialize(host)
		@viewer = viewer
	end

	def run

	end


end

 	group = Group.new(200)
    group2 = Group.new(100)

    guest1 = Guest.new("Joe", "Purple Rain", 50)
    guest2 = Guest.new("Bob", "Come as you are", 3)
    guest3 = Guest.new("Karl", "November Rain", 78)
    guest4 = Guest.new("Sally", "Smooth Criminal", 34)
    guest5 = Guest.new("Barbra", "Like a Virgin", 99)
    guest6 = Guest.new("Helen", "You're my Hero", 5)

    room1 = Room.new(8, 200)
    room2 = Room.new(6, 180)
    room3 = Room.new(4, 100)
    room4 = Room.new(5, 120)
    room5 = Room.new(6, 180)
    room6 = Room.new(7, 166)
    room7 = Room.new(4, 110)
    room8 = Room.new(3, 3000000)


kareoke = Control.new()
kareoke.run

