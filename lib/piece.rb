require_relative 'piece_modules/knight.rb'
require_relative 'piece_modules/rook.rb'
require_relative 'piece_modules/bishop.rb'
require_relative 'piece_modules/pawn.rb'
require_relative 'piece_modules/king.rb'
require_relative 'piece_modules/queen.rb'
require_relative 'piece_modules/draw_piece.rb'

class Piece

  attr_reader :team, :number_of_moves

  include DrawPiece

  def initialize(team, name)
    @team = team
    @number_of_moves = 0
    @name = name
    case @name
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

  def draw_piece
    convert_piece(@team, @name)
  end
end
