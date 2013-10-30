class Triangle
  def initialize(side1, side2, side3)
    @side1, @side2, @side3 = side1, side2, side3
    validate_sides
  end

  def kind
    kind_with_amount_of_equal_sides(number_of_equal_length_sides)
  end

  private
  def kind_with_amount_of_equal_sides(number_of_equal_length_sides)
    {
      1 => :equilateral,
      2 => :isosceles,
      3 => :scalene,
      }[number_of_equal_length_sides]
  end

  private
  def number_of_equal_length_sides
    [@side1, @side2, @side3].uniq.size
  end

  private
  def validate_sides
    raise TriangleError unless all_sides_are_greater_than_zero?
    raise TriangleError if triangle_inequality?
  end

  private
  def all_sides_are_greater_than_zero?
    [@side1, @side2, @side3].all? { |side| side > 0 }
  end

  private
  def triangle_inequality?
    [@side1, @side2, @side3].any? { |side| side >= (sum_of_sides - side) }
  end

  def sum_of_sides
    @sum_of_sides ||= @side1 + @side2 + @side3
  end

end

class TriangleError < StandardError; end