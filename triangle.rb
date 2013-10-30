class Triangle
  def initialize(side1, side2, side3)
    @side1, @side2, @side3 = side1, side2, side3
  end

  def kind
    return :equilateral if equilateral?
    return :isosceles if isosceles?
  end

  private
  def equilateral?
    number_of_equal_length_sides == 1
  end

  private
  def isosceles?
    number_of_equal_length_sides == 2
  end

  private
  def number_of_equal_length_sides
    [@side1, @side2, @side3].uniq.size
  end

end