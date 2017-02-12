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

	def afford(room, group)
		if room.price <= group.pot
			return true
		else
			return false
		end
	end

	def take_booking(room, group)
		if availabilty == true
			if afford(room, group) == true
				if room.group_fit(group) == true
					group.group_pay(room)
					return  "Thanks for the money, see you on the Date"
				else
					return "Sorry you're to Phat for us!"
				end
			else
				 return "You're skint, come back later"
				end
		else
			return "Too late to make a booking, we are open for bribes though?"
		end
	end

	def take_group_payment(room, group)	 
		@money += group.group_pay(room)

	end

	def take_guest_payment(guest, amount)
		@money += guest.payment(amount)
	end
  

end
