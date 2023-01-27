@echo off

set ROMFILE="smw.sfc"
if exist smc\ (echo) else (mkdir smc)
if exist %ROMFILE% (
	for /f "tokens=*" %%a in (award-winners.txt) do (
		.\flips.exe --apply levels\%%a.bps %ROMFILE% roms\%%a.smc
	)
	pause
) else (
    :: file doesn't exist
    echo :( Couldn't find %ROMFILE% to apply patches to, please include your original version of SMW renamed to that.
    pause
)