//Can't do this in JavaScript because + is syntax, not a function
//So instead we do this, which is not the same thing
function a_plus_abs_b(a, b) { 
  return b > 0 ? a + b : a - b 
}
