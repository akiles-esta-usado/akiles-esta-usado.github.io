@echo off

SETLOCAL


set suffix=%1
set filename=%2

wsl sh "./scripts/create_%suffix%.sh" "%filename%"
