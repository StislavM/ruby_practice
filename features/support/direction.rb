class Direction
  def choose_side(side)
    case side
      when 'W'
        WEST
      when 'S'
        SOUTH
      when 'E'
        EAST
      when 'N'
        NORTH
    end
  end

  class West
    def turn_right
      NORTH
    end

    def turn_left
      SOUTH
    end

    def move(x, y)
      x -= 1
      [x, y]
    end

    def string_name
      'W'
    end
  end

  class East
    def turn_right
      SOUTH
    end

    def turn_left
      NORTH
    end

    def move(x, y)
      x += 1
      [x, y]

    end

    def string_name
      'E'
    end
  end

  class North
    def turn_right
      EAST
    end

    def turn_left
      WEST
    end

    def move(x, y)
      y += 1
      [x, y]
    end

    def string_name
      'N'
    end
  end

  class South
    def turn_right
      WEST
    end

    def turn_left
      EAST
    end

    def move (x, y)
      y -= 1
      [x, y]
    end

    def string_name
      'S'
    end
  end

  WEST = West.new
  SOUTH = South.new
  EAST = East.new
  NORTH = North.new
end