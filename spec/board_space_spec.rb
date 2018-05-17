require 'rspec'

require_relative '../lib/board_space.rb'

describe BoardSpace do

  describe '.initialize' do
    context 'when passed x and y coordinates' do
      before do 
        @this_space = BoardSpace.new(0, 0)
        @that_space = BoardSpace.new(4, 4)
      end
      it { expect(@this_space.coordinates).to eq([0, 0]) }
      it { expect(@that_space.coordinates).to eq([4, 4]) }
    end

    context 'when passed not adjacent spaces' do
      before { @this_space = BoardSpace.new(1, 1) }
      it { expect(@this_space.move_up).to be_nil }
      it { expect(@this_space.move_right).to be_nil }
      it { expect(@this_space.move_down).to be_nil }
      it { expect(@this_space.move_left).to be_nil }
    end
  end
end
