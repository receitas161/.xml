@echo off
setlocal enabledelayedexpansion

set "services=PcaSvc PlugPlay DPS DiagTrack SysMain EventLog Sysmon"

for %%i in (%services%) do (
    sc config %%i start= auto
)

for %%i in (%services%) do (
    net start %%i
)

endlocal
