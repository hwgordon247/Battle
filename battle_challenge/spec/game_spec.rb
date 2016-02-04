require 'game'

describe Game do

  let(:player_1) {double :player}
  let(:player_2) {double :player}
  subject(:game) { Game.new(player_1, player_2) }

  context '#attack' do
    it 'attacks a given player' do
      expect(player_2).to receive(:reduce_health)
      game.attack(player_2)
    end
  end

  context '#health' do
    it 'gets health of given player' do
      expect(player_2).to receive(:health)
      game.health(player_2)
    end
  end

  context '#name' do
    it 'gets name of given player' do
      expect(player_2).to receive(:name)
      game.name(player_2)
    end
  end


end