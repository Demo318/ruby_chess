require 'rspec'

require_relative '../../lib/piece.rb'

describe Pawn do
  describe '.initialize' do
    context 'when creating a pawn for each team' do
      before do
        @team_one_pawn = Piece.new(1, 'pawn')
        @team_two_pawn = Piece.new(2, 'pawn')
      end
      it { expect(@team_one_pawn.team).to eq(1) }
      it { expect(@team_two_pawn.team).to eq(2) }
    end
  end


  describe '#find_available_moves' do
    before do
      @my_board = Board.new
    end
    context 'on first move' do
      before do
        @team_one_pawn_one_space = @my_board.find_space(1, 1)
        @team_one_pawn_two_space = @my_board.find_space(5, 1)

        @team_two_pawn_one_space = @my_board.find_space(1, 6)
        @team_two_pawn_two_space = @my_board.find_space(5, 6)

        @team_one_pawn_one = Piece.new(1, 'pawn')
        @team_one_pawn_two = Piece.new(1, 'pawn')

        @team_two_pawn_one = Piece.new(2, 'pawn')
        @team_two_pawn_two = Piece.new(2, 'pawn')

        @team_one_pawn_one_space.piece = @team_one_pawn_one
        @team_one_pawn_two_space.piece = @team_one_pawn_two
        @team_two_pawn_one_space.piece = @team_two_pawn_one
        @team_two_pawn_two_space.piece = @team_two_pawn_two
      end
      #pawn can move two spaces forward on first move.
      context 'when the board is empty' do
        it do
          expect(@team_one_pawn_one.find_available_moves).to eq([[1, 2],
                                                                 [1, 3]])
          expect(@team_one_pawn_one.find_available_moves).to eq([[5, 2],
                                                                 [5, 3]])
          expect(@team_one_pawn_one.find_available_moves).to eq([[1, 5],
                                                                 [1, 4]])
          expect(@team_one_pawn_one.find_available_moves).to eq([[5, 5],
                                                                 [5, 4]])
        end
      end

      context 'when team member & enemy blocking' do
        before do
          # have one blocked by teammate
          # have the other blocked by enemy
        end
        it do
          expect().to eq([])
        end
      end

      context 'when enemy can be captured' do
        before do
          # Create two pawns
          # have one capture left and the other capture right.
        end
        it do
          expect().to eq()
        end
      end
    end

    context 'not on first move' do
      before do
        # put two pawns of each team in new positions
      end
      #pawn can move two spaces forward on first move.
      context 'when the board is empty' do
        it do
          expect().to eq([])
        end
      end

      context 'when team member & enemy blocking' do
        before do
          # have one blocked by teammate
          # have the other blocked by enemy
        end
        it do
          expect().to eq([])
        end
      end

      context 'when enemy can be captured' do
        before do
          # Create two pawns
          # have one capture left and the other capture right.
        end
        it do
          expect().to eq()
        end
      end

      context 'when en passant capture available' do
        before do
          # setup circumstances, for each side, of en passant capture
        end
        it { expect().to eq() }
      end

      context 'when at edge of board' do
        # make sure nothing bad happens if a pawn is at the left or right
        # edge of the board.
      end
    end
  end

  
end

