%%%-----------------------------------------------------------------------------
%%% @doc
%%% Top level application module.
%%% @author {{author_name}}
%%% @date {{date}}
%%% @end
%%%-----------------------------------------------------------------------------

-module({{name}}_app).
-author("{{author_name}}").

-behaviour(application).

%%%=============================================================================
%%% Exports and Definitions
%%%=============================================================================

-export([
	start/2, 
	stop/1
]).

%%%=============================================================================
%%% API
%%%=============================================================================

start(_StartType, _StartArgs) ->
    {{name}}_sup:start_link().

stop(_State) ->
    ok.

%%%=============================================================================
%%% Internal
%%%=============================================================================
