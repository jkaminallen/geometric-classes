class Square
  attr_reader :x, :y, :length, :width

  def initialize(length, x = 0, y = 0)
    @length = length
    @x = x
    @y = y
  end

  def width
    length
  end

  def diameter
    Math.sqrt(2) * length
  end

  def area
    length * length
  end

  def perimeter
    length * 4
  end

  def contains_point?(x1 ,y1)
    lower_bound_x = x.to_f - (length.to_f / 2)
    lower_bound_y = y.to_f - (length.to_f / 2)
    upper_bound_x = x.to_f + (length.to_f / 2)
    upper_bound_y = y.to_f + (length.to_f / 2)

    (x1 >= lower_bound_x) && (y1 >= lower_bound_y) && (x1 <= upper_bound_x) && (y1 <= upper_bound_y)
  end
end
