require 'game'
require 'player'
require 'card'
require 'board'

RSpec.describe Game do
  subject(:game) {Game.new(board, player1, player2)}
  let(:board) {double}
  let(:player1) {double("John")}
  let(:player2) {double("Mary")}
  
  describe '#initialize' do
    it "recieves a board and players array" do
      expect()
    end
  end
end