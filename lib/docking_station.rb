class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def dock_a_bike(bike = Bike.new())
    @bikes << bike
  end

  def release_bike(bike = Bike.new())

    if @bikes.empty? == true
      raise ArgumentError, "dock empty"
    else
      return bike
    end


  end

end
class Bike

  def working?

  end

end
dock = DockingStation.new()
