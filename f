SHUTDOWN(8)                                                               shutdown                                                               SHUTDOWN(8)

[1mNAME[0m
       shutdown - Halt, power-off or reboot the machine

[1mSYNOPSIS[0m
       [1mshutdown [22m[OPTIONS...] [TIME] [WALL...]

[1mDESCRIPTION[0m
       [1mshutdown [22mmay be used to halt, power-off or reboot the machine.

       The first argument may be a time string (which is usually "now"). Optionally, this may be followed by a wall message to be sent to all logged-in
       users before going down.

       The time string may either be in the format "hh:mm" for hour/minutes specifying the time to execute the shutdown at, specified in 24h clock format.
       Alternatively it may be in the syntax "+m" referring to the specified number of minutes m from now.  "now" is an alias for "+0", i.e. for triggering
       an immediate shutdown. If no time argument is specified, "+1" is implied.

       Note that to specify a wall message you must specify a time argument, too.

       If the time argument is used, 5 minutes before the system goes down the /run/nologin file is created to ensure that further logins shall not be
       allowed.

[1mOPTIONS[0m
       The following options are understood:

       [1m--help[0m
           Print a short help text and exit.

       [1m-H[22m, [1m--halt[0m
           Halt the machine.

       [1m-P[22m, [1m--poweroff[0m
           Power-off the machine (the default).

       [1m-r[22m, [1m--reboot[0m
           Reboot the machine.

       [1m-h[0m
           Equivalent to [1m--poweroff[22m, unless [1m--halt [22mis specified.

       [1m-k[0m
           Do not halt, power-off, reboot, just write wall message.

       [1m--no-wall[0m
           Do not send wall message before halt, power-off, reboot.

       [1m-c[0m
           Cancel a pending shutdown. This may be used cancel the effect of an invocation of [1mshutdown [22mwith a time argument that is not "+0" or "now".

[1mEXIT STATUS[0m
       On success, 0 is returned, a non-zero failure code otherwise.

[1mSEE ALSO[0m
       [1msystemd[22m(1), [1msystemctl[22m(1), [1mhalt[22m(8), [1mwall[22m(1)

systemd 233                                                                                                                                      SHUTDOWN(8)
