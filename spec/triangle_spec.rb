require('rspec')
require('triangle')

describe(Triangle) do
  describe('#is_valid?') do
    it("accepts three floats as input and returns whether or not is triangle.") do
      test_triangle = Triangle.new(1,1,3)
      expect(test_triangle.is_valid?()).to(eq(false))
    end
  end
end
