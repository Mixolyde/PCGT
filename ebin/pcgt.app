%%%-------------------------------------------------------------------
%%% File    : pcgt.app
%%% Author  : Brian E. Williams <mixolyde@gmail.com>
%%% Description : Procedural Generation Toolkit app resource file
%%%
%%% Created :  06 Mar 2012 by Brian E. Williams <mixolyde@gmail.com>
%%%-------------------------------------------------------------------
%% This is the application resource file (.app file) for the 'base'
%% application.

{application, pcgt,
  [{description,  "A library application of functions useful for procedural content generation." },
	  {vsn,           "1.0" },
	  {modules,       [pcgt_lsystem, pcgt_simplexnoise]},
  	{registered,    []},
  	{applications,  [kernel,stdlib]},
    {env, []}
  ]
}.
