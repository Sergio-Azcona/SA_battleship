require './lib/ship_vsa'

RSpec.describe Ship do
    let(:cruiser) { Ship.new("Cruiser", 3 ) }

    it 'should be a class' do
      expect(cruiser).to be_an_instance_of Ship
    end

    it 'boat should have a name' do
      expect(cruiser.name).to eq("Cruiser")
    end

    it 'should have a length' do
      expect(cruiser.length).to eq(3)
    end

    it 'should have health' do
      expect(cruiser.health).to eq(3)
    end

    it 'should inform if sunk' do
      expect(cruiser.sunk?).to eq false
      cruiser.hit
      expect(cruiser.health).to eq 2
      cruiser.hit
      expect(cruiser.health).to eq 1
      expect(cruiser.sunk?).to eq false
      cruiser.hit
      expect(cruiser.sunk?).to eq true
    end
  end 