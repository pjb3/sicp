def f(x, y, z)
  if x >= y
    x * x + (y >= z ? y * y : z * z)
  else
    y * y + (x >= z ? x * x : z * z)
  end
end
puts f(3, 4, 5)
puts f(2, 3, 1)