# An instance of Board is a graph of BoardSpace objects. These
# are interrelated to one another and are most fundamentally accessed
# through the @root_space at coordinates 0, 0. Functions of the
# board include finding and returning BoardSpace objects.
class Board
  attr_reader :root_space

  def initialize
    @root_space = BoardSpace.new(0, 0)
  end
end
