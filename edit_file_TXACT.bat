@echo off
rem This script is to be run after the file is exported.
CD /D D:\FTP\U_SIF013A

rem Remove the header line from the transaction file
powershell -file scripts\remove_header_TXACT.ps1 U_SIF013_TXACT.csv
