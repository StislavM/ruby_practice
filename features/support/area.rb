class Area
  def initialize (point_x,point_y)
    @point_max_x = Integer(point_x)
    @point_max_y = Integer(point_y)
  end
  def in_area?(x_position,y_position)
    x_position.between?(0,@point_max_x) && y_position.between?(0,@point_max_y)
  end
end