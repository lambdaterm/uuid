-module(uuid_test).
-export([all/0]).

-include_lib("eunit/include/eunit.hrl").

all() ->
  [
    to_string_test()
  ].

to_string_test() ->
  Uuid = <<"f47ac10b-58cc-4372-a567-0e02b2c3d479">>,
  ?assertEqual("f47ac10b-58cc-4372-a567-0e02b2c3d479", uuid:to_string(Uuid)).
