require 'docking_station'
require 'bike'

test = DockingStation.new

describe DockingStation do
  bike = Bike.new
  describe '#release_bike' do
    it { is_expected.to respond_to :release_bike }
    it 'releases a bike' do
      subject.dock(bike)
      expect(subject.release_bike).to respond_to :working?
    end
    it 'raises an error if no bikes are available' do
      expect {subject.release_bike}.to raise_error("Error: No bikes available")
    end
  end
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to :bike_docked }
  it 'docks something' do
    expect(subject.dock(bike)).to eq bike
end
  it 'returns docked bikes' do
    subject.dock(bike)
    expect(subject.bike_docked).to eq bike
  end
end