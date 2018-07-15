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
  end
end
