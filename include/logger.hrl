%% logging callbacks

-define(PRINT(Format, Args), io:format(Format, Args)).

-define(DEBUG(Format, Args), logger:log(debug, Format, Args)).

-define(INFO_MSG(Format, Args), logger:log(info, Format, Args)).

-define(WARNING_MSG(Format, Args), logger:log(warning, Format, Args)).

-define(ERROR_MSG(Format, Args), logger:log(error, Format, Args)).

-define(CRITICAL_MSG(Format, Args), logger:log(critical, Format, Args)).
