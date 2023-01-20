@echo off

SETLOCAL


set suffix=%1
set filename=%2

wsl bash "./scripts/create_%suffix%.sh" "%filename%"
