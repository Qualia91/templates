%%%-----------------------------------------------------------------------------
%%% @doc
%%% Top level application supervisor
%%% @author {{author_name}}
%%% @date {{date}}
%%% @end
%%%-----------------------------------------------------------------------------

-module({{name}}_sup).
-author("{{author_name}}").

-behaviour(supervisor).

%%%=============================================================================
%%% Exports and Definitions
%%%=============================================================================

-export([start_link/0]).

-export([init/1]).

-define(SERVER, ?MODULE).

%%%=============================================================================
%%% API
%%%=============================================================================

start_link() ->
    supervisor:start_link({local, ?SERVER}, ?MODULE, []).

init([]) ->
    SupFlags = #{strategy => one_for_all,
                 intensity => 0,
                 period => 1},

    ChildSpecs = [

    ],

    {ok, {SupFlags, ChildSpecs}}.

%%%===================================================================
%%% Internal functions
%%%===================================================================

create_child(ID, Module, Inputs, Type) ->
    #{
        id => ID,
        start => {Module, start_link, Inputs},
        restart => permanent,
        shutdown => brutal_kill,
        type => Type
    }.