require('rspec')
require('triangle')

describe(Triangle) do
  describe('#is_valid?') do
    it("accepts three floats as input and returns failure when not triangle.") do
      test_triangle = Triangle.new(1,1,3)
      expect(test_triangle.is_valid?()).to(eq(false))
    end

    it("accepts three floats as input and returns true if triangle") do
      test_triangle = Triangle.new(3,4,5)
      expect(test_triangle.is_valid?()).to(eq(true))
    end
  end
end
