function cube(x) { return x * x * x}
function abs(n) { return n < 0 ? n * -1 : n }
function improve(x, y) { return ((x/(y*y)) + (y * 2))/3.0 }
function isGoodEnough(guess, prevGuess, x) { return abs(((cube(guess) - cube(prevGuess))/guess)) < 0.001 }
function cbrt(x, guess, prevGuess) {
  if(!guess) { guess = 1.0 }
  if(!prevGuess) { prevGuess = 0.0 }
  if(isGoodEnough(guess, prevGuess, x)) {
    return guess;
  } else {
    return cbrt(x, improve(x, guess), guess);
  }
}