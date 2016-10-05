-module(uuid).

-export([
  generate/0,
  to_string/1
]).

-type uuid() :: bitstring().

-spec generate() -> uuid().
generate() ->
  <<A:32, B:16, C:16, D:16, E:48>> =
    list_to_binary([trunc(random:uniform() * 255) || _ <- lists:seq(1, 16)]),
  Res = io_lib:format("~8.16.0b-~4.16.0b-4~3.16.0b-~4.16.0b-~12.16.0b",
    [A, B, C band 16#0fff, D band 16#3fff bor 16#8000, E]),
  list_to_binary(Res).

-spec to_string(uuid()) -> string().
to_string(<<_:288>> = UUID) ->
  binary_to_list(UUID).
