require('pry')
require_relative('guest.rb')
require_relative('group.rb')
require_relative('room.rb')
require_relative('host.rb')
require_relative('viewer.rb')
# require_relative('controller.rb')

	
    group = Group.new(200)

    Joe = Guest.new("Joe", "Purple Rain", 50)
    Bob = Guest.new("Bob", "Come as you are", 3)
    Karl = Guest.new("Karl", "November Rain", 78)
    Sally = Guest.new("Sally", "Smooth Criminal", 34)
    Barbara = Guest.new("Barbara", "Like a Virgin", 99)
    Helen = Guest.new("Helen", "You're my Hero", 5)
 	Nobody = Guest.new(nil,nil,0)

    people = [Joe, Bob, Karl, Sally, Helen , Barbara, Nobody]


    group.add_guest(Joe, Bob, Karl, Sally, Helen ,Barbara)

    room1 = Room.new(4, 200)
    # binding.pry
    room2 = Room.new(6, 180)
    room3 = Room.new(4, 100)
    room4 = Room.new(5, 120)
    room5 = Room.new(6, 180)
    room6 = Room.new(7, 166)
    room7 = Room.new(4, 110)
    room8 = Room.new(3, 3000000)

    room1.add_group(group)

    host = Host.new(400)
    host.add_room(room2, room3, room4, room5, room6, room7, room8,room1)

    viewer = Viewer.new
# name_list = room1.group.guests.map do |person|
# 	person.name

# puts name_list
# p room2

#  puts host.take_booking(room1,group)
# guest13 = viewer.get_guest_details(guest13)

# p guest13

# guest7 = Guest.new(nil,nil,0)

# p guest7

# puts" What is your name?"
# guest7.name = gets.chomp

# p guest7

list = viewer.get_guest_list

puts list

# # guest_list = viewer.confirm_guest_list(list, people)
# result = []
# counter = 0
#  	people.each do |x| 
#  		until counter > list.length
# 	if list[counter] == x.to_s
# 		result.push(x)
# 	end
# 	counter =+ 1
# 	end
# end
prelim_list = []
	prelim_list = list & people
		
	
	

p prelim_list	