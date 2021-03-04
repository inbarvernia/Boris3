require 'docking_station'
require 'bike'

test = DockingStation.new

describe DockingStation do
  bike = Bike.new
  it { is_expected.to respond_to :release_bike }
  it 'release_bike' do
    expect(subject.release_bike).to respond_to :working?
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