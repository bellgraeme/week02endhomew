require('pry')
require_relative('guest.rb')
require_relative('group.rb')
require_relative('room.rb')
require_relative('host.rb')
require_relative('viewer.rb')



 	group = Group.new(200)
    group2 = Group.new(100)

    guest1 = Guest.new("Joe", "Purple Rain", 50)
    guest2 = Guest.new("Bob", "Come as you are", 3)
    guest3 = Guest.new("Karl", "November Rain", 78)
    guest4 = Guest.new("Sally", "Smooth Criminal", 34)
    guest5 = Guest.new("Barbara", "Like a Virgin", 99)
    guest6 = Guest.new("Helen", "You're my Hero", 5)
    guest13 = Guest.new(nil, nil, nil)

    room1 = Room.new(8, 200)
    room2 = Room.new(6, 180)
    room3 = Room.new(4, 100)
    room4 = Room.new(5, 120)
    room5 = Room.new(6, 180)
    room6 = Room.new(7, 166)
    room7 = Room.new(4, 110)
    room8 = Room.new(3, 3000000)

    group.add_guest(guest1, guest2, guest3, guest2, guest6)

    host = Host.new(400)

    host.add_room(room1, room2, room3, room4, room5, room6,room7, room8)

	viewer = Viewer.new
    p host

	viewer.take_booking(host,room1,group,guest13)
    puts
    puts
    puts"*******************************************"
    puts 
    puts "The day of the booking arives and the Group arives"

    viewer.check_in(group, room1)
    puts
    puts
    puts
    puts

    p host





