require_relative 'piece_modules/knight.rb'
require_relative 'piece_modules/rook.rb'
require_relative 'piece_modules/bishop.rb'
require_relative 'piece_modules/pawn.rb'
require_relative 'piece_modules/king.rb'
require_relative 'piece_modules/queen.rb'

class Piece

  attr_reader :team, :number_of_moves

  def initialize(team, name)
    @team = team
    @number_of_moves = 0
    case name
    when 'knight'
      extend Knight
    when 'rook'
      extend Rook
    when 'bishop'
      extend Bishop
    when 'pawn'
      extend Pawn
    when 'king'
      extend King
    when 'queen'
      extend Queen
    end
  end
end
