@ECHO OFF

ECHO Please wait, installing %1 ...
COPY \CH375\CONFIGS\%1 \CONFIG.SYS

ECHO \CH375\BENCH %1 > \TEMP\RUNBENCH.BAT

ECHO > \TEMP\%1.LOG

ECHO Rebooting to load new drivers and run benchmark ... 
\UTIL\REBOOT
