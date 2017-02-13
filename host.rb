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
		# binding.pry
		if availabilty == true
			if afford(room, group) == true
				if room.group_fit(group) == true
					take_group_payment(room, group)
					puts  "The room is available and you have paid for it, see you on the Date"
				else
					puts "Sorry you're to Phat for us!"
					return abort
				end
			else
				 puts "You're skint, come back later"
				 return abort
				end
		else
			puts "Too late to make a booking, but we are open for bribes though?"
			return abort
		end
	end

	def take_group_payment(room, group)	 
		@money += group.group_pay(room)

	end

	def take_guest_payment(guest, amount)
		@money += guest.payment(amount)
	end
  

end
