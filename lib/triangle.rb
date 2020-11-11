class Triangle

  attr_accessor :length1, :length2, :length3
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if (((@length1 + @length2) > @length3) && ((@length1 + @length3) > @length2) && ((@length3 + @length2) > @length1)) && !(@length1 <= 0.0 || @length2 <= 0.0 || @length3 <= 0.0) 
      if @length1 == @length2 && @length2 == @length3
        :equilateral
      elsif @length1 != @length2 && @length1 != @length3 && @length2 != @length3
        :scalene
      else
        :isosceles
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    def message
      "BEEEEEEEEP"
    end
  end


end
