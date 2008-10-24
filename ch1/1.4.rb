#Not really the same thing, but closer in spirit than the JavaScript version
def a_plus_abs_b(a, b)
  a.send(b > 0 ? :+ : :-, b)
end
puts a_plus_abs_b(5,-3)
puts a_plus_abs_b(5,3)