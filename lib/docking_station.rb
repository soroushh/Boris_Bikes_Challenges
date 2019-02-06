class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def dock_a_bike(bike = Bike.new())
    if @bikes.size == 1
      raise ArgumentError, "dock full"
    else
      @bikes << bike
    end

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
