require "docking_station"
describe DockingStation do
  it "respond to release_bike method" do
    docking_station = DockingStation.new()
    expect(docking_station.respond_to?(:release_bike)).to eq true

  end
end
