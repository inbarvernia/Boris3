require 'docking_station'
require 'bike'

test = DockingStation.new

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it 'release_bike' do
    expect(subject.release_bike).to respond_to :working?
  end
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to :bike_docked }
  it 'docking bike' do
    bike = Bike.new
    docked_station = subject.dock(bike)
    expect(docked_station).to have_atributes(:biked_docked => bike)
  end
end
