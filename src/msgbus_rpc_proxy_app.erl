-module(msgbus_rpc_proxy_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    msgbus_rpc_proxy_sup:start_link(),
    msgbus_rpc_proxy_adapter_sup:start_link().

stop(_State) ->
    ok.
