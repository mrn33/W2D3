require 'hanoi'

RSpec.describe Hanoi do
  subject(:hanoi) {Hanoi.new(player)}
  let(:player) {double}
  
  describe '#initialize' do
    it "creates array with towers" do
      answer = [[3,2,1], [], []]
      expect(hanoi.towers).to eq(answer)
    end
  end
  
  describe '#valid_move?' do
    before(:each) { hanoi.towers = [[3, 1], [], [2]] }
    it "raises error is not valid move" do
      expect{ hanoi.valid_move?(2, 0) }.to raise_error('Not valid')
    end
    it "returns true if valid move" do
      expect(hanoi.valid_move?(0, 2)).to be true
    end
  end
    
  describe '#move' do
    it "moves disc to another tower" do
      hanoi.towers = [[3, 1], [], [2]]
      hanoi.move(2,1)
      expect(hanoi.towers).to eq([[3, 1], [2], []])
    end
  end
  
  describe '#won?' do
    it 'returns true if final tower is filled' do
      hanoi.towers = [[],[],[3,2,1]]
      expect(hanoi.won?).to be true
    end
    it 'returns false if final tower is not filled' do
      hanoi.towers = [[],[1],[3,2]]
      expect(hanoi.won?).to be false
    end
  end
  
  describe '#play' do
    it 'returns Congrats if game is over' do
      hanoi.towers = [[],[],[3,2,1]]
      expect(hanoi.play).to eq('Congrats')
    end
  end


end