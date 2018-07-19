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

end