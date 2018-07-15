require 'rspec'

require_relative '../lib/piece.rb'

describe Piece do
  describe '.initialize' do
    context 'when passed arguments to be a Knight on team 1' do
      before do
        @this_piece = Piece.new(1, 'knight')
      end
      it { expect(@this_piece.team).to eq(1) }
      it { expect(@this_piece.number_of_moves).to eq(0) }
      it { expect(@this_piece.move_rules_name).to eq('knight') }
    end
    context 'when passed arguments to be a Knight on team 2' do
      before do
        @this_piece = Piece.new(2, 'knight')
      end
      it { expect(@this_piece.team).to eq(2) }
    end
    context 'when passed arguments to be a Rook' do
      before do
        @this_piece = Piece.new(1, 'rook')
      end
      it { expect(@this_piece.team).to eq(1) }
      it { expect(@this_piece.move_rules_name).to eq('rook') }
    end
    context 'when passed arguments to be a Bishop' do
      before do
        @this_piece = Piece.new(1, 'bishop')
      end
      it { expect(@this_piece.move_rules_name).to eq('bishop') }
    end
    context 'when passed arguments to be a Pawn' do
      before do
        @this_piece = Piece.new(1, 'pawn')
      end
      it { expect(@this_piece.move_rules_name).to eq('pawn') }
    end
    context 'when passed arguments to be a King' do
      before do
        @this_piece = Piece.new(1, 'king')
      end
      it { expect(@this_piece.move_rules_name).to eq('king') }
    end
    context 'when passed arguments to be a Queen' do
      before do
        @this_piece = Piece.new(1, 'queen')
      end
      it { expect(@this_piece.move_rules_name).to eq('qyeen') }
    end
  end
end
