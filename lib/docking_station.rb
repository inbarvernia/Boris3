class DockingStation
  attr_reader :bike_docked

  def release_bike
    return Bike.new
  end

  def dock(bike)
    @bike = bike
    bike_docked = @bike
  end
end
