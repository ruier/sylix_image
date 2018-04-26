rem Add a new TAP virtual ethernet adapter

@echo off
if /i %PROCESSOR_ARCHITECTURE% == x86 (
        cd x86
) else (
        cd x64
)

"tapinstall.exe" install "OemWin2k.inf" tap0901

pause