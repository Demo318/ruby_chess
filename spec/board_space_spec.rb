require 'rspec'

require_relative '../lib/board_space.rb'

describe BoardSpace do

  describe '.initialize' do
    before { @this_space = BoardSpace.new(0, 0) }
    it { expect(@this_space.coordinates).to eq([0, 0]) }
  end

end
