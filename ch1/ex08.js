var cbrt = function(){
  var cube = function(x) { return x * x * x}
  var abs = function(n) { return n < 0 ? n * -1 : n }
  var improve = function(x, y) { return ((x/(y*y)) + (y * 2))/3.0 }
  var isGoodEnough = function(guess, prevGuess, x) { return abs(((cube(guess) - cube(prevGuess))/guess)) < 0.001 }
  return function(x, guess, prevGuess) {
    if(!guess) { guess = 1.0 }
    if(!prevGuess) { prevGuess = 0.0 }
    if(isGoodEnough(guess, prevGuess, x)) {
      return guess;
    } else {
      return arguments.callee(x, improve(x, guess), guess);
    }
  }
}()
