require "docking_station"
describe DockingStation do
  it "respond to release_bike method" do
    docking_station = DockingStation.new()
    expect(docking_station.respond_to?(:release_bike)).to eq true
  end
  it "adding a bike" do
    bike = Bike.new()
    dock = DockingStation.new()
    dock.dock_a_bike(bike)
    expect(dock.bikes.include?(bike)).to eq true
  end

  it "the method exists?" do
    dock = DockingStation.new()
    expect(dock.respond_to?(:dock_a_bike)).to eq true
  end
  it "raising error when releasing from an empty dock" do
    dock = DockingStation.new()
    expect {dock.release_bike}.to  raise_error(ArgumentError, "dock empty")
  end
  it "putting a bycicle to a full dock." do
    dock = DockingStation.new()
    20.times{ dock.dock_a_bike }
    expect {dock.dock_a_bike}.to  raise_error(ArgumentError, "dock full")
  end


end
