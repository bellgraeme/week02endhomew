require('pry')

class Host
	
	attr_reader :money, :rooms
	attr_accessor  

	def initialize(money)
		@rooms = rooms
		@money = money
	end

	def add_room(*room)

		@rooms = [room]
		@rooms.flatten!
	end

	def availabilty
		occup_array = @rooms.map{|room, name| room.occupancy }
		occup_array.include?(false)
	end

	def afford(room,group)

	end

	def take_booking(room, group)
		if availabilty == true
			if room.group_fit(group) == true
				room.add_group(group)
				return  "Welcome to those about to Rock!"
			else
				return "Sorry you're to Phat for us!"
			end
		else
			return "Too late to make a booking, we are open for bribes though?"
		end
	end

  

end
