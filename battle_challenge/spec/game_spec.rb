require 'game'

describe Game do

let(:player_1) {double :player}
let(:player_2) {double :player}

  subject(:game) { Game.new() }

context '#attack' do
  it 'attacks a given player' do
    expect(player_2).to receive(:reduce_health)
    game.attack(player_2)
   end
 end


end
