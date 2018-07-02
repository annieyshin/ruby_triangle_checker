require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangle')
require('pry')

get ('/')do
  @description = "Triangle Finder"
  erb(:input)
end
get ('/output')do
  side_one = params.fetch("side_one")
  side_two = params.fetch("side_two")
  side_three = params.fetch("side_three")

triangle = Triangle.new(side_one, side_two, side_three)
@is_it_a_triangle = triangle.triangle_finder()
  erb(:output)
end
