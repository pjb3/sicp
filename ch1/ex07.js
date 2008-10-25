var sqrt = function() {
  var square = function(x) { return x * x }
  var average = function(x, y) { return (x + y) / 2 }
  var abs = function(n) { return n < 0 ? n * -1 : n }
  var improve = function(guess, x) { return average(guess, (x / guess)) }
  var isGoodEnough = function(guess, prevGuess, x) { 
    return abs(((square(guess) - square(prevGuess))/guess)) < 0.001 
  }
  return function(x, guess, prevGuess) {
    if(!guess) { guess = 1.0 }
    if(!prevGuess) { prevGuess = 0.0 }
    if(isGoodEnough(guess, prevGuess, x)) {
      return guess;
    } else {
      return arguments.callee(x, improve(guess, x), guess);
    }    
  }
}()