require 'player'

describe Player do

let(:input_name) {"bert"}
subject(:player) {described_class.new(input_name)}


   context '#name' do
     it 'returns the name' do
        expect(player.name).to eq input_name
     end
  end
end
