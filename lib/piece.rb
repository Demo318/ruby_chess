require_relative 'piece_modules/knight.rb'

class Piece

  attr_reader :team, :number_of_moves

  def initialize(team, name)
    @team = team
    @number_of_moves = 0
    case name
    when "knight"
      extend Knight
    end
  end
end
