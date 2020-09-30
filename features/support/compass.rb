class Compass
  def initialize
    @directions = ['N', 'E', 'S', 'W']
    current_direction
  end

  def rotate_clockwise
    @directions.rotate!
  end

  def rotate_anticlockwise
    @directions.rotate!(-1)
  end

  def caliberate(direction)
    @directions.rotate! until current_direction == direction
  end

  def current_direction
    @current_direction = @directions.first
  end
end