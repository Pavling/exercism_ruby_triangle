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
    raise TriangleError if any_side_is_zero?
  end

  private
  def any_side_is_zero?
    [@side1, @side2, @side3].any? { |side| side.zero? }
  end

end

class TriangleError < StandardError; end