function square(x) { return x * x }
function average(x, y) { return (x + y) / 2 }
function abs(n) { return n < 0 ? n * -1 : n }
function improve(guess, x) { return average(guess, (x / guess)) }
function isGoodEnough(guess, prevGuess, x) { return abs(((square(guess) - square(prevGuess))/guess)) < 0.001 }
function sqrt(x, guess, prevGuess) {
  if(!guess) { guess = 1.0 }
  if(!prevGuess) { prevGuess = 0.0 }
  if(isGoodEnough(guess, prevGuess, x)) {
    return guess;
  } else {
    return sqrt(x, improve(guess, x), guess);
  }
}