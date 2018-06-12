# The BoardSpace class represents each square of the chess board.
# Each space knows its own coordinates, what piece is on it,
# and which spaces are adjacent to it.
class BoardSpace
  attr_accessor :piece, :move_right, :move_left,
                :move_up

  attr_reader :coordinates, :move_down

  def initialize(x_coord, y_coord, adjacent_spaces = [nil, nil, nil, nil])
    @coordinates = [x_coord, y_coord]
    @move_up = adjacent_spaces[0]
    @move_right = adjacent_spaces[1]
    @move_down = adjacent_spaces[2]
    @move_left = adjacent_spaces[3]
    @piece = nil
  end
end
