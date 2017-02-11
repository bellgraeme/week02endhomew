  require('pry')
  require_relative('guest.rb')

class  Group

  attr_reader :pot
  attr_accessor :guests

  def initialize(pot)
    @guests = []
    @pot = pot

  end

  def add_guest(*guest)
    guest.each{ |person| @guests << person }
    
  end

  def remove_guest(leaver)
    guest = @guests.find do |person|
      person.name == leaver
    end
    @guests.delete(guest)
  end

  def total
    total = 0
    total = @guests.each do |person|
       total += person.money
    end
    return total

  end
end
@group = Group.new(200)

@guest1 = Guest.new("Joe", "Purple Rain", 50)
@guest2 = Guest.new("Bob", "Come as you are", 3)
@guest3 = Guest.new("Karl", "November Rain", 78)
@guest4 = Guest.new("Sally", "Smooth Criminal", 34)
@guest5 = Guest.new("Barbra", "Like a Virgin", 99)
@guest6 = Guest.new("Helen", "You're my Hero", 5)

@group.add_guest(@guest1, @guest2, @guest3, @guest4,@guest5,@guest6)

p @group.total