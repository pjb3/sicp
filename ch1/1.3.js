function f(x, y, z) {
  if(x >= y) {
    return x * x + (y >= z ? y * y : z * z)
  } else {
    return y * y + (x >= z ? x * x : z * z)
  }
}