%%%-------------------------------------------------------------------
%%% File    : pcgt_lsystem.erl
%%% Author  : Brian E. Williams <mixolyde@gmail.com>
%%% Description : Collection of utilities for implementing L-Systems
%%%   An L-system is a parallel string rewriting mechanism based on a
%%%   set of production rules.
%%%  
%%% Created :  05 Mar 2012 by Brian E. Williams <mixolyde@gmail.com>
%%%-------------------------------------------------------------------

-module(pcgt_lsystem).
-author("mixolyde@gmail.com").
-export([iterate/2, iterate/3]).

-include("../include/pcgt_lsystem.hrl").

%%--------------------------------------------------------------------
%% Function: iterate(Grammar, Iterations) ->
%% Description: Take the L-System Grammar, start with the default and
%%   perform iterations, return the last String.
%%--------------------------------------------------------------------
iterate(_Grammar, _Iterations) ->
  StartString = [start],
  iterate(_Grammar, StartString, _Iterations).

%%--------------------------------------------------------------------
%% Function: iterate(Grammar, String, Iterations) ->
%% Description: Take the L-System Grammar, perform an iteration on 
%%   String, return the new String.
%%--------------------------------------------------------------------
iterate(_Grammar, String, 0) -> String;
iterate(_Grammar, _String, _Iterations) ->
    erl_lsystem:iterate(_Grammar, _String, _Iterations -1).
