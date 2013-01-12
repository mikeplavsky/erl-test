-module(test).
-export([double/1]).

double(V) ->
  times(V,2).

times(X,Y) ->
  X*Y.
