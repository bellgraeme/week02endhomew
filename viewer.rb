class Viewer



	def get_guest_details(guest)
		puts "Could you give us your name please?"
		name = gets.chomp
		guest.name = name
		puts "#{name} could you tell us what rocks your boat?"
		guest.song = gets.chomp
		puts "#{name} tells us how poor you are?"
		guest.money = gets.chomp.to_i
		return guest
	end

end