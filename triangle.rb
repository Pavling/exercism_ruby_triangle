class Triangle
  def initialize(side1, side2, side3)
    @side1, @side2, @side3 = side1, side2, side3
  end

  def kind
    return :equilateral if equilateral?
  end

  private
  def equilateral?
    [@side1, @side2, @side3].uniq.size == 1
  end

end