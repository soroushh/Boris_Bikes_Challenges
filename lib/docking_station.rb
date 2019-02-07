class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :bikes

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def dock_a_bike(bike = Bike.new())

      if full?
        raise ArgumentError, "dock full"
      else
        @bikes << bike
      end

  end

  def release_bike()
    if empty?
      raise ArgumentError, "dock empty"
    else
      @bikes.pop()
    end
  end
  def full?
    (@bikes.size>=DEFAULT_CAPACITY)?true:false
  end

  def empty?
    (@bikes.size==0)?true:false
  end
  private :empty?,:full?
end
class Bike

  def working?

  end

end
