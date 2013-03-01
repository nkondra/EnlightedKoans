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
  triangle_sides = [a, b, c]
  equal_sides = triangle_sides.uniq.count
  if equal_sides == 3
  	return :scalene
  elsif equal_sides == 2
  	return :isosceles
  else
  	return :equilateral
  end
end

# Error class used in part 2.  No need to cha nge this code.
class TriangleError < StandardError
end
