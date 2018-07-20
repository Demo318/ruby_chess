require 'rspec'

require_relative '../../lib/piece.rb'

describe Pawn do
  context 'when creating a pawn for each team' do
    before do
      @team_one_pawn = Piece.new(1, 'pawn')
      @team_two_pawn = Piece.new(2, 'pawn')
    end
    it { expect(@team_one_pawn.team).to eq(1) }
    it { expect(@team_two_pawn.team).to eq(2) }
  end
end