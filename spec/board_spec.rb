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

end
