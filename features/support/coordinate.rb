class Coordinate
  attr_accessor :x, :y
  def initialize(x, y)
    @x = x.to_i
    @y = y.to_i
  end

  def increment_y
    @y += 1
  end

  def increment_x
    @x += 1
  end

  def decrement_x
    @x -= 1
  end

  def decrement_y
    @y -= 1
  end
end
