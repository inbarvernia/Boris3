require 'docking_station'
require 'bike'

test = DockingStation.new

describe DockingStation do
  bike = Bike.new
  describe '#release_bike' do
    it { is_expected.to respond_to :release_bike }
    context 'when a bike is available' do
      it 'releases a bike' do
        subject.dock(bike)
        expect(subject.release_bike).to be_an_instance_of(Bike)
      end
      it 'returns something that responds to working?' do
        subject.dock(bike)
        expect(subject.release_bike).to respond_to :working?
      end
    end
    context 'when no bikes are available' do
      it 'raises an error' do
        subject.bike_docked == nil
        expect {subject.release_bike}.to raise_error("Error: No bikes available")
      end
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