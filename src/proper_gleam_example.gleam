pub fn exponential(b: Int, n: Int) -> Int {
  case n {
    0 -> 1
    _ -> b * exponential(b, n - 1)
  }
}
