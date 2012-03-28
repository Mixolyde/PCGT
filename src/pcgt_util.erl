%%%-------------------------------------------------------------------
%%% File    : pcgt_util.erl
%%% Author  : Brian E. Williams <mixolyde@gmail.com>
%%% Description : Miscellaneous utilities for the toolkit not specific
%%%   to a particular PCG type
%%%  
%%% Created :  05 Mar 2012 by Brian E. Williams <mixolyde@gmail.com>
%%%-------------------------------------------------------------------

-module(pcgt_util).
-author("mixolyde@gmail.com").

-compile([debug_info, export_all]).


fasthash(Integer) when is_integer(Integer) ->
  Key32 = <<Integer:32>>,    %chop to 32 bits
  io:format("Input: ~B, Chopped: ~B~n", [Integer, Key32]),
  ok.


