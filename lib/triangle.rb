class Triangle
  define_method(:initialize) do |a, b, c|
    @a = a
    @b = b
    @c = c
  end

  define_method(:is_valid?) do
    ((@a**2)+(@b**2)==(@c**2))
  end
end
