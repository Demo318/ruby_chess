require_relative 'board_space.rb'

# An instance of Board is a graph of BoardSpace objects. These
# are interrelated to one another and are most fundamentally accessed
# through the @root_space at coordinates 0, 0. Functions of the
# board include finding and returning BoardSpace objects.
class Board
  attr_reader :root_space

  def initialize
    @root_space = BoardSpace.new(0, 0)
    build_board
  end

  def find_space(x_coord, y_coord)
    space = find_space_x_coord(x_coord, @root_space)
    space = find_space_y_coord(y_coord, space)
    space
  end

  def set_pieces
    nil
  end

  private

  def find_space_y_coord(coord, space)
    loop do
      break if space.coordinates[1] == coord
      space = space.move_up
    end
    space
  end

  def find_space_x_coord(coord, space)
    loop do
      break if space.coordinates[0] == coord
      space = space.move_right
    end
    space
  end

  def build_board
    build_bottom_row(@root_space)
    build_columns(@root_space)
    stitch_columns(@root_space)
    true
  end

  def stitch_these_two_columns(column_one_space, column_two_space)
    loop do
      column_one_space.move_right = column_two_space
      column_two_space.move_left = column_one_space
      break if column_one_space.move_up.nil?
      column_one_space = column_one_space.move_up
      column_two_space = column_two_space.move_up
    end
  end

  def stitch_columns(col_one)
    loop do
      col_two = col_one.move_right
      stitch_these_two_columns(col_one.move_up, col_two.move_up)
      break if col_two.move_right.nil?
      col_one = col_two
    end
  end

  def build_single_column(this_space)
    x_coord = this_space.coordinates[0]
    7.times do |ind|
      this_space.move_up = BoardSpace.new(x_coord, ind + 1, [nil, nil, this_space, nil])
      this_space = this_space.move_up
    end
  end

  def build_columns(base_space)
    loop do
      build_single_column(base_space)
      break if base_space.move_right.nil?
      base_space = base_space.move_right
    end
  end

  def build_bottom_row(space)
    7.times do |ind|
      space.move_right = BoardSpace.new(ind + 1, 0, [nil, nil, nil, space])
      space = space.move_right
    end
  end
end
