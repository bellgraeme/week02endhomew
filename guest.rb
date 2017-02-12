require('pry')

class  Guest

attr_accessor :song, :name, :money

def initialize(name, song, money)
  @name = name
  @song = song
  @money = money
end



def get_name
  return @name
end


def payment(amount)
  @money = @money - amount
  return amount
end

def cheer
  return "Dis iz ma Fav!"
end


end
