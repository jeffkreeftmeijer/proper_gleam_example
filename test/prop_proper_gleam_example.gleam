import proper_gleam_example

pub fn prop_exponential_returns_an_integer() {
  forall([integer(), pos_integer()], fn(args) {
    let [b, n] = args
    is_integer(proper_gleam_example.exponential(b, n))
  })
}

pub fn prop_exponential_multiplied_by_b_is_exponential_plus_one() {
  forall([integer(), pos_integer()], fn(args) {
    let [b, n] = args
    proper_gleam_example.exponential(b, n) * b == proper_gleam_example.exponential(b, n + 1)
  })
}

external fn forall(b, fun) -> a = "proper" "forall"
external fn integer() -> Int = "proper_types" "integer"
external fn pos_integer() -> Int = "proper_types" "pos_integer"
external fn is_integer(a) -> Bool = "erlang" "is_integer"
