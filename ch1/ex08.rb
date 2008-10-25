module Ex08
  def cbrt(x, guess=1.0, prev_guess=0.0)
    if(good_enough?(guess, prev_guess, x))
      guess
    else
      cbrt(x, improve(x, guess), guess)
    end
  end
  private
  def cube(x)
    x * x * x
  end

  def improve(x, y)
    ((x/(y*y)) + (y * 2))/3.0
  end

  def good_enough?(guess, prev_guess, x)
    ((cube(guess) - cube(prev_guess))/guess).abs < 0.001
  end
end

extend Ex08

puts "cbrt(27) => #{cbrt(27)}"
puts "cbrt(0.000001) => #{cbrt(0.000001)}"
puts "cbrt(1000000) => #{cbrt(1000000)}"

