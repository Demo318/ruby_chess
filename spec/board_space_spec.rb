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

    context 'when passed individual adjacent spaces' do
      before do
        @space_with_up = BoardSpace.new(4, 4, [BoardSpace.new(4, 5),
                                               nil, nil, nil])
        @space_with_right = BoardSpace.new(4, 4, [nil,
                                                  BoardSpace.new(5, 4),
                                                  nil, nil])
        @space_with_down = BoardSpace.new(4, 4, [nil, nil,
                                                 BoardSpace.new(4, 3),
                                                 nil])
        @space_with_left = BoardSpace.new(4, 4, [nil, nil, nil,
                                                 BoardSpace.new(3, 4)])
      end
      it { expect(@space_with_up.move_up.coordinates).to eq([4, 5]) }
      it { expect(@space_with_right.move_right.coordinates).to eq([5, 4]) }
      it { expect(@space_with_down.move_down.coordinates).to eq([4, 3]) }
      it { expect(@space_with_left.move_left.coordinates).to eq([3, 4]) }
    end
  end
end
