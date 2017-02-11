require('pry')
require_relative('guest.rb')
require_relative('group.rb')

class  Host

    attr_reader :money, :rooms
    attr_accessor  

  def initialize(money)
    @rooms = []
    @money = money
  end

  def add_room(*room)
    room.each {|item| @rooms << room}
  end

  


end