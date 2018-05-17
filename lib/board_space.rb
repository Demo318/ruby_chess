# The BoardSpace class represents each square of the chess board.
# Each space knows its own coordinates, what piece is on it,
# and which spaces are adjacent to it.
class BoardSpace
  attr_reader :coordinates

  def initialize(x_coord, y_coord, adjacent_spaces = [nil, nil, nil, nil])
    @coordinates = [x_coord, y_coord]
  end
end
