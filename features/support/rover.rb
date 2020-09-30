class Rover
  attr_reader :message
  @message = ''
  def initialize(x, y, direction)
    @current_x = Integer(x)
    @current_y = Integer(y)
    @direction = Direction.new.choose_side(direction)
  end

  def follow_instruction(instruction)
    case instruction
    when "M"
      self.move
    when "L"
      self.turn_left
    when "R"
      self.turn_right
    end
  end

  def current_position
    [@current_x, @current_y, @direction.string_name].join(' ')
  end

  def move
    @current_x, @current_y = @direction.move(@current_x, @current_y)
    unless defined?(@available_area) && @available_area.in_area?(@current_x, @current_y)
      @message = "I am going to get lost"
    end
  end
  def turn_left
    @direction = @direction.turn_left
  end
  def turn_right
    @direction = @direction.turn_right
  end
  def add_zone_limit(area)
    @available_area = area
  end
end

