require 'rspec'

require_relative '../lib/board.rb'

describe Board do
  describe '.initialize' do
    context 'when new board created' do
      before do
        @my_board = Board.new
      end
      it { expect(@my_board.root_space.class).to eq(BoardSpace) }
    end
  end

  describe '#find_space' do
    before do
      @my_board = Board.new
    end
    context 'when looking for top-left corner at (0, 7)' do
      it { expect(@my_board.find_space(0, 7).coordinates).to eq([0, 7]) }
    end
    context 'when looking for rop-right corner at (7, 7)' do
      it { expect(@my_board.find_space(7, 7).coordinates).to eq([7, 7]) }
    end
    context 'when looking for bottom-right corner at (7, 0)' do
      it { expect(@my_board.find_space(7, 0).coordinates).to eq([7, 0]) }
    end
    context 'when looking for bottom-left corner at (0, 0)' do
      it { expect(@my_board.find_space(0, 0).coordinates).to eq([0, 0]) }
    end
    context 'when looking for center at (4, 4)' do
      it { expect(@my_board.find_space(4, 4).coordinates).to eq([4, 4]) }
    end
  end

end
