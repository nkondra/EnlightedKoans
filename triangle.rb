# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  triangle_sides = [a, b, c].sort

  raise TriangleError unless triangle_sides[0] > 0
  raise TriangleError unless triangle_sides[0] + triangle_sides[1] > triangle_sides[2]

  equal_sides = triangle_sides.uniq.count
  if equal_sides == 3
  	return :scalene
  elsif equal_sides == 2
  	return :isosceles
  else
  	return :equilateral
  end
end

# Code solution i found online to refactor my code even further *Impressive*
#
# def triangle(a, b, c)
#   a, b, c = sides = [a, b, c].sort
#   raise TriangleError unless a > 0 and a + b > c
#   {1 => :equilateral, 2 => :isosceles, 3 => :scalene}[sides.uniq.size]
# end

# Error class used in part 2.  No need to cha nge this code.
class TriangleError < StandardError
end
