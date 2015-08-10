require('rspec')
require('triangle')

describe(Triangle) do
  describe('#is_valid?') do
    it("accepts three integers as input and returns failure when not triangle.") do
      test_triangle = Triangle.new(1,1,3)
      expect(test_triangle.is_valid?()).to(eq(false))
    end

    it("accepts three integers as input and returns true if triangle") do
      test_triangle = Triangle.new(3,4,5)
      expect(test_triangle.is_valid?()).to(eq(true))
    end
    it("accepts three floats as input and returns true if triangle") do
      test_triangle = Triangle.new(1.1,1.1,1.1)
      expect(test_triangle.is_valid?()).to(eq(true))
    end
  end

  describe('#type') do
    it("accepts 3 equal sides of triangle and returns that it is an equilateral triangle") do
      test_triangle = Triangle.new(1,1,1)
      expect(test_triangle.type()).to(eq("equilateral"))
    end

    it("accepts 3 sides of triangle and returns an invalid triangle") do
      test_triangle = Triangle.new(1,1,3)
      expect(test_triangle.type()).to(eq("Triangle not valid"))
    end

    it("accepts 3 sides of a triangle and return that it is an isosceles triangle if two of the sides are equal.") do
      test_triangle = Triangle.new(6,6,4)
      expect(test_triangle.type()).to(eq("isosceles"))
    end

    it("accepts 3 sides of triangle and returns that it is an scalene triangle") do
      test_triangle = Triangle.new(3, 4, 5)
      expect(test_triangle.type()).to(eq("scalene"))
    end
  end
end
