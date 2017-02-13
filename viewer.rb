require ('pry')

class Viewer

	def take_booking(hoast, room, group, guest)
		puts "Hello CodeClan Caraoke, you are calling to make a booking?"
		gets.chomp
		get_guest_details(guest)
		puts "The pleasure is all yours"
		get_group_details(group)
		get_guest_list

		hoast.take_booking(room,group)
	end

	

	def get_guest_details(guest)
		puts "Could you give us your name please?"
		name = gets.chomp
		guest.name = name
		puts "#{name} could you tell us what song rocks your boat?"
		guest.song = gets.chomp
		puts "#{name} tells us how poor you are?"
		guest.money = gets.chomp.to_i
		return guest
	end

	def get_group_details(group)
		puts "How much do you have to pay for the Room"
		group.pot = gets.chomp.to_i
	end

	def get_guest_list
		puts "Could we get a list of members of your group, nod when you have told us all of them?"
		list = []
		input = " "
		while input != ""
		input = gets.chomp
		list.push(input)
		end
		list.each{|x| x.capitalize!}
		list.pop
		return list
	end

	# def confirm_guest_list(list, people)
	# 	prelim_list = people.find_all do |x|
	# 		if list.include?(x) == x.to_s
	# 		prelim_list.push(x)
	# 		end
	# 	end
	# 	return prelim_list
	# end

	def check_in(group, room)
		puts "Would you like to check in? yes or no?"
		result = gets.chomp
		if result == "yes"
			room.add_group(group)
			puts "Come this way your room is waiting"
		else
			puts "Sorry, come back when you are ready."
		end
	end
end
