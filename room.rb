require('pry')

class  Room

  attr_reader :capacity, :occupancy, :price, :song_list, :group

  def initialize(capacity, price)
    @capacity = capacity
    @occupancy = false
    @price = price
    @song_list = [ ]
    @group = group
  end

  def update_status
    if @occupancy == false
      return @occupancy = true
    elsif @occupancy == true
      return @occupancy = false
    end
  end

  def add_song(*song)
    song.each { |item| @song_list << song } 
  end

  def add_group(group)
    @group = group
    update_status
  end

  def remove_group
    @group = "Empty"
    update_status
  end

  def group_fit(group)
    if group.guests.length <= @capacity
      return true
    else
      false
    end
  end
end

