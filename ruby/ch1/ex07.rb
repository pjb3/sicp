module Ex07

  def sqrt(x, guess=1.0, prev_guess=0.0)
    if(good_enough?(guess, prev_guess, x))
      guess
    else
      sqrt(x, improve(guess, x), guess)
    end
  end

  private
  def square(x)
    x * x
  end

  def average(x, y)
    (x + y) / 2.0
  end

  def improve(guess, x)
    average(guess, (x / guess))
  end

  def good_enough?(guess, prev_guess, x)
    ((square(guess) - square(prev_guess))/guess).abs < 0.001
  end  

end

extend Ex07

puts "sqrt(4) => #{sqrt(4)}"
puts "sqrt(0.0001) => #{sqrt(0.0001)}"
puts "sqrt(10000000000000000000000000000000000000000000000000000) => #{sqrt(10000000000000000000000000000000000000000000000000000)}"

