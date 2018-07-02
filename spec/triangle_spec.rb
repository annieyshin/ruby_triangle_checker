require('rspec')
require('triangle')

describe('#triangle_finder') do
  it ("") do
    triangle = Triangle.new(2)
  expect(triangle.triangle_finder).to(eq([1,2]))
  end
end
