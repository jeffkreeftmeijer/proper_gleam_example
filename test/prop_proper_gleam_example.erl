-module(prop_proper_gleam_example).
-import(proper_gleam_example, [exponential/2]).
-include_lib("proper/include/proper.hrl").

prop_exponential_returns_an_integer() ->
    ?FORALL({B, N}, {integer(), pos_integer()},
            begin
                is_integer(exponential(B, N))
            end).

prop_exponential_multiplied_by_b_is_exponential_plus_one() ->
    ?FORALL({B, N}, {integer(), pos_integer()},
            begin
                exponential(B, N) * B =:= exponential(B, N + 1)
            end).
