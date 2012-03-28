%%%-------------------------------------------------------------------
%%% File    : pcgt_lsystem.hrl
%%% Author  : Brian E. Williams <mixolyde@gmail.com>
%%% Description : Header defintions for the PCGT L-System module
%%%
%%% Created :  05 Mar 2012 by Brian E. Williams <mixolyde@gmail.com>
%%%-------------------------------------------------------------------

%% Data structures for creating a grammar
%%---------------------------------------------------------------------
%% Data Type: lsystem_grammar
%% variables: the list of atoms or modules (atoms with variables attached)
%%   that are allowed to be modified by rules
%% constants: the list of atoms or modules (atoms with variables attached)
%%   that are NEVER allowed to be modified by rules once they have entered
%%   the system stream
%% axiom: The initial, default system string, a list of variables/constants
%% rules: The set of propagation rules for the system
%% A complete grammar for an L system, containing the inputs and rules
%%   for generating
%%----------------------------------------------------------------------
-record(lsystem_grammar, {variables, constants, axiom, rules}).

-define(EXAMPLE_GRAMMAR, #grammar{
    variables = [a, b], 
    constants = [ $[, $] ], 
    axiom=[a]
    rules = []}).

