require "docking_station"
describe Bike do
  it "check if responds to working mehtod" do
    bike = Bike.new()
    expect(bike.respond_to?(:working?)).to eq true
  end
end
