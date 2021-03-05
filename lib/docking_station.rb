class DockingStation
  attr_reader :bike_docked

  def initialize
    @bike_docked
  end

  def release_bike
    raise "Error: No bikes available" unless @bike_docked
    @bike_docked
  end

  def dock(bike)
    @bike = bike
    @bike_docked = @bike
  end
end
