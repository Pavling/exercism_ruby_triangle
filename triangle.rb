class Triangle
  def initialize(side1, side2, side3)
    @side1, @side2, @side3 = side1, side2, side3
  end

  def kind
    kind_with_amount_of_equal_sides(number_of_equal_length_sides)
  end

  private
  def kind_with_amount_of_equal_sides(number_of_equal_length_sides)
    {
      1 => :equilateral,
      2 => :isosceles,
      }[number_of_equal_length_sides]
  end

  private
  def number_of_equal_length_sides
    [@side1, @side2, @side3].uniq.size
  end

end