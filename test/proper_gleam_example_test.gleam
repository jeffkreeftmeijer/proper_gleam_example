import proper_gleam_example
import gleam/should

pub fn hello_world_test() {
  proper_gleam_example.hello_world()
  |> should.equal("Hello, from proper_gleam_example!")
}
