echo WARNING: this script will delete ALL TAP virtual adapters (use the device manager to delete adapters one at a time)
pause

@echo off
if /i %PROCESSOR_ARCHITECTURE% == x86 (
        cd x86
) else (
        cd x64
)

"tapinstall.exe" remove tap0901
pause
