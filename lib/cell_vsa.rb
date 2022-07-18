require './lib/ship_vsa'

class Cell
  attr_reader :coordinate, :ship
  def initialize(coordinate)
    @coordinate = coordinate
    @ship
    @vacant = true
  end

  def place_ship(boat)
    @ship = boat
  end   

  def empty?
    #  if
       @place_ship != @vacant 
    #  else
    #   @vacant
    #  end
  end
  


end