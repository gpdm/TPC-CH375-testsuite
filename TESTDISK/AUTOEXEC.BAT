@ECHO OFF

ECHO Current DOS Version:
VER

ECHO Driver file loaded:
IF EXIST \CONFIG.SYS TYPE \CONFIG.SYS
IF NOT EXIST \CONFIG.SYS ECHO none yet loaded

\CH375\TEST.BAT
