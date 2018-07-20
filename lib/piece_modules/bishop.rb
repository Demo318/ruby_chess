module Bishop

  def move_rules_name
    'bishop'
  end

  def find_available_moves(own_space)
    available_spaces_coords = []
    available_spaces_coords = check_direction(:move_up, :move_right,
                                              own_space,
                                              available_spaces_coords)
    available_spaces_coords = check_direction(:move_down, :move_right,
                                              own_space,
                                              available_spaces_coords)
    available_spaces_coords = check_direction(:move_down, :move_left,
                                              own_space,
                                              available_spaces_coords)
    available_spaces_coords = check_direction(:move_up, :move_left,
                                              own_space,
                                              available_spaces_coords)
    available_spaces_coords
  end

  private

  def check_direction(one_direct, two_direct, space, available_arr)
    loop do
      break if space.send(one_direct).nil? || space.send(one_direct).send(two_direct).nil?
      space = space.send(one_direct).send(two_direct)
      unless space.piece.nil?
        break if space.piece.team == @team
      end
      available_arr << space.coordinates
      break unless space.piece.nil?
    end
    available_arr
  end
end
