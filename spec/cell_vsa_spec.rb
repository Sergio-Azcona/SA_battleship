require './lib/ship_vsa'
require './lib/cell_vsa'

RSpec.describe Cell do
  let(:cell) { Cell.new('B4')}
  let(:cruiser) { Ship.new("Cruiser", 3) }

  it 'should have a class' do
  expect(cell).to be_an_instance_of Cell
  end

  it 'should have coordinates' do
    expect(cell.coordinate).to eq('B4')
  end

  it 'should identify the boat'do
    # require 'pry';binding.pry
    expect(cell.ship).to eq nil
    # require 'pry';binding.pry
  end

  xit 'should inform if a cell is empty' do
    expect(cell.empty?).to eq true
  end

  it 'should be able to place ship' do
    cell.place_ship(cruiser)
    expect(cell.ship).to eq(cruiser)
    # require 'pry';binding.pry
    expect(cell.empty?).to eq false
  end

end
