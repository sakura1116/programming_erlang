%%%-------------------------------------------------------------------
%%% @author sakura1116
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%% 名前は同じだけどアリティが異なる関数
%%%
%%% @end
%%% Created : 12. 2 2018 11:02
%%%-------------------------------------------------------------------
-module(lib_misc).
-author("sakura1116").

-export([sum/1, sum/2, for/3]).

sum(L) ->
  sum(L,0).

sum([], N) ->
  N;

sum([H|T], N) ->
  sum(T, H+N).

for(Max, Max, F) ->
  [F(Max)];

for(I, Max, F) ->
  [F(I)| for(I + 1, Max, F)].

