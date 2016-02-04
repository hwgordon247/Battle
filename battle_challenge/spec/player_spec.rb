require 'player'

describe Player do

  subject(:heather) { Player.new('Heather') }
  subject(:birthday) { Player.new('Birthday') }


   context '#name' do
     it 'returns the name' do
        expect(heather.name).to eq 'Heather'
     end
  end

  context '#health' do
    it 'returns the player health' do
      expect(heather.health).to eq Player::STARTING_HEALTH
    end
  end

  context '#reduce_health' do
    it 'reduces the health of the chosen player' do
      expect{heather.reduce_health}.to change{heather.health}.by(-10)
    end
  end

end
