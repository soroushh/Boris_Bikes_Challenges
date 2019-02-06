class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def dock_a_bike(bike)
    @bikes << bike
  end

  def release_bike(bike)

    @bikes.delete(bike)

  end

end
class Bike

  def working?

  end

end
