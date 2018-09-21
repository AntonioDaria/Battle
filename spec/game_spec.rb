require 'game'

describe Game do

  let(:dave) { double :Player1, name: "Dave", hp: 50}
  let(:mittens) { double :Player2, name: "Mittens", hp: 50}
  let(:game) { described_class.new(dave, mittens) }

  describe "#attack" do
    it "damages the player" do
       expect(mittens).to receive(:receive_damage)
       game.attack(mittens)
     end
  end

  describe '#initialize' do
    it "takes player instances as arguments " do
      expect(game.player1).to eq dave
    end

    it "takes 2 player instances as arguments " do
      expect(game.player2).to eq mittens
    end
  end

  describe '#turn' do
    it 'returns the value of the current player' do
      expect(game.turn).to eq(game.player1)
    end
  end

  describe '#switch' do
    context "when turn is player1" do
      it " sets turn to player2" do
        game.turn = game.player1
        game.switch
        expect(game.turn).to eq(game.player2)
      end
    end
    context "when turn is player2" do
      it " sets turn to player1" do
        game.turn = game.player2
        game.switch
        expect(game.turn).to eq(game.player1)
      end
  end
  end
end
