-module(modtest2).
-export([main/0,loop/0,do/1,a/1]).
-vsn(1.1).

main() ->
  register(foo,spawn(modtest2,loop,[])).

loop() ->
  receive
    {Sender,N} ->
      Sender ! modtest2:a(N)
  end,
  io:put_chars("running!\n"),
  modtest2:loop().

do(M) ->
  foo ! {self(),M},
  receive Y ->
      Y
  end.

a(N) -> N - 10.

