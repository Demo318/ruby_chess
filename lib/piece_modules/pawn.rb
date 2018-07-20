module Pawn
  def move_rules_name
    'pawn'
  end

  def find_available_moves(own_space)
    moving = if @team == 1
               :move_up
             else
               :move_down
             end
    available_spaces_coords = []
    move_forward?(own_space, moving).each do |n|
      available_spaces_coords << n
    end
    available_spaces_coords
  end

  private

  def move_forward?(space, moving)
    forward_moves = []
    x = if @number_of_moves.zero?
          2
        else
          1
        end
    x.times do
      break unless valid_next_space?(space, moving)
      space = space.send(moving)
      forward_moves << space.coordinates
    end
    forward_moves
  end

  def valid_next_space?(space, moving)
    return false if space.send(moving).nil?
    true
  end

end
