class Triangle
  define_method(:initialize) do |a, b, c|
    @a = a
    @b = b
    @c = c
  end

  define_method(:is_valid?) do
    ((@a+@b) > @c) && ((@a+@c)>@b) && ((@b+@c)>@a)
  end

  define_method(:type) do
    if self.is_valid?()
      if @a == @b && @b == @c
        "equilateral"
      elsif (@a == @b) || (@a == @c) || (@b == @c)
        "isosceles"
      else
        "scalene"
      end

    else
      "Triangle not valid"
    end
  end
end
