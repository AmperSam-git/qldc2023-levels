@echo off

set ROMFILE="smw.sfc"
if exist winners\ (echo) else (mkdir winners)
if exist %ROMFILE% (
	for /f "tokens=*" %%a in (winners.txt) do (
		.\flips.exe --apply randomized\deobfuscated\%%a.bps %ROMFILE% winners\%%a.smc
	)
	pause
) else (
    :: file doesn't exist
    echo :( Couldn't find %ROMFILE% to apply patches to, please include your original version of SMW renamed to that.
    pause
)