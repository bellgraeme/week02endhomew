  require('pry')

class  Group

  attr_reader :guests
  attr_accessor :pot

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

  # def total
  #  total = 0
  #    @guests.each do |person|
  #     total + person.money
  #   end  
  # end

  def total_map
    total = []
    total = @guests.map do |person|
      person.money
    end
      sum = 0
      total.each{|x| sum += x}
      return sum
    end

    def group_pay(room)
      @pot -= room.price
      return room.price
    end

end

