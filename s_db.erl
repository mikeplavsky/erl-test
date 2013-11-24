-module(s_db).
-export([store/3]).
-vsn(0.1).

store(Key, NewVal, [{Key,_} | Db]) -> 
  [{Key,NewVal} | Db];
store(Key, NewVal, [Element | Db]) ->
  [Element | store(Key, NewVal, Db)];
store(Key, NewVal, []) ->
  [{Key, NewVal}].


