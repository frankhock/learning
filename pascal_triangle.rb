def pascals_triangle(level, triangle = [])
  return triangle if level == 0
  above_row = triangle.last

  if above_row
    triangle << ([0] + above_row).zip(above_row + [0]).collect { |a, b| a + b }
  else
    triangle << [1]
  end

  pascals_triangle((level - 1), triangle)
end

p pascals_triangle(10)
