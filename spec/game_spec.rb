require 'game'

describe Game do
  let (:player_1) {double(:player1)}
  let (:player_2) {double(:player2)}
  let (:name) {double(:name)}
  subject (:game) {described_class.new(player_1,player_2)}

  before do
    allow(player_1).to receive(:name).and_return(player_1)
    allow(player_2).to receive(:name).and_return(player_2)
  end
  describe '#attack' do
    it 'damages the player 1' do
      expect(player_1).to receive(:receive_damage)
      game.attack_player_1
    end

    it 'damages the player 2' do
      expect(player_2).to receive(:receive_damage)
      game.attack_player_2
    end
  end

  describe '#health' do
    it 'returns the health player 1' do
      expect(player_1).to receive(:health)
      game.health_player_1
    end
    it 'returns the health player 2' do
      expect(player_2).to receive(:health)
      game.health_player_2
    end
  end

  describe '#name' do
    it 'return the name of player 1' do
      expect(player_1).to receive(:name)
      game.name_player_1
    end

    it 'return the name of player 2' do
      expect(player_2).to receive(:name)
      game.name_player_2
    end
  end
  describe '#chosen_name' do
    it 'returns player1 name first' do

      expect(game.chosen_name).to eq(player_1)
    end
    it 'returns player2 after switch' do
      game.switch
      expect(game.chosen_name).to eq(player_2)
    end
  end

  describe '#switch' do
     it 'switches the route' do
     expect(game.switch).to be false
    end
  end

  describe '#chosen_damage' do
    it 'damages player 2 first' do
      expect(player_2).to receive(:receive_damage)
      game.chosen_damage
    end

    it 'damages player 1 after a switch' do
      game.switch
      expect(player_1).to receive(:receive_damage)
      game.chosen_damage
    end
  end




 end
