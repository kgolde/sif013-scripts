@echo off
rem This script is to be run after the file is exported.
CD /D D:\FTP\U_SIF013A

rem Edit the header line of the IncomingStudent file
powershell -file scripts\edit_header_INSTD.ps1 U_SIF013_INSTD.csv
