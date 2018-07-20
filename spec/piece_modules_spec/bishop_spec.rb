require 'rspec'

require_relative '../../lib/piece.rb'

describe Bishop do
  describe '.initialize' do
    context 'when creating a bishop for each team' do
      before do
        @team_one_bishop = Piece.new(1, 'bishop')
        @team_two_bishop = Piece.new(2, 'bishop')
      end
      it { expect(@team_one_bishop.team).to eq(1) }
      it { expect(@team_two_bishop.team).to eq(2) }
    end
  end

  describe '#find_available_moves' do
    before do
      @my_board = Board.new
      @my_bishop = Piece.new(1, 'bishop')
      @my_bishop_space = @my_board.find_space(4, 4)
      @my_bishop_space.piece = @my_bishop
    end
    context 'when the board is empty' do
      it do
        expect(@my_bishop.find_available_moves(@my_bishop_space)).to eq(
          [[5, 5], [6, 6], [7, 7], [5, 3],
           [6, 2], [7, 1], [3, 3], [2, 2],
           [1, 1], [0, 0], [3, 5], [2, 6], [1, 7]]
        )
      end
    end

    context 'when team member blocking' do
      # piece cannot move through a team member. Should
      # return available options up until that friendly held space.
      before do
        @my_board.find_space(6, 6).piece = Piece.new(1, 'pawn')
        @my_board.find_space(2, 2).piece = Piece.new(1, 'pawn')
      end
      it do
        expect(@my_bishop.find_available_moves(@my_bishop_space)).to eq(
          [[5, 5], [5, 3], [6, 2], [7, 1],
           [3, 3], [3, 5], [2, 6], [1, 7]]
        )
      end
    end

    context 'when enemy blocking' do
      # bishop can capture enemy piece. The enemy-occupied space
      # is returned as a viable option, but the spaces after it
      # are not.
    end

  end

end