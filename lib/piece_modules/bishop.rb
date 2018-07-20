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
      break if edge_of_board?(one_direct, two_direct, space)
      space = space.send(one_direct).send(two_direct)
      break if team_member_occupied?(space)
      available_arr << space.coordinates
      break if enemy_occupied?(space)
    end
    available_arr
  end

  def edge_of_board?(direct_one, direct_two, space)
    if space.send(direct_one).nil?
      return true
    elsif space.send(direct_one).send(direct_two).nil?
      return true
    end
    false
  end

  def enemy_occupied?(space)
    return true unless space.piece.nil?
    false
  end

  def team_member_occupied?(space)
    unless space.piece.nil?
      return true if space.piece.team == @team
    end
    false
  end
end
