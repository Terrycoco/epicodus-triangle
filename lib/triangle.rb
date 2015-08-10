class Triangle
  define_method(:initialize) do |a, b, c|
    @a = a
    @b = b
    @c = c
  end

  define_method(:is_valid?) do
    ((@a+@b) > @c) && ((@a+@c)>@b) && ((@b+@c)>@a)
  end
end
