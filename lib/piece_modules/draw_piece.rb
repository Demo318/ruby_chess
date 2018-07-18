module DrawPiece
  def convert_piece(team, piece)
    draw_options = [{'king' => "\u2654", 'queen' => "\u2655",
                     'rook' => "\u2656", 'bishop' => "\u2657",
                     'knight' => "\u2658", 'pawn' => "\u2659"},
                    {'king' => "\u265A", 'queen' => "\u265B",
                     'rook' => "\u265C", 'bishop' => "\u265D",
                     'knight' => "\u265E", 'pawn' => "\u265F"}]

    draw_options[team - 1][piece].encode('utf-8')
  end
end
