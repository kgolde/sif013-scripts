@echo off
rem This script is to be run before the file transfer.
CD /D D:\FTP\U_SIF013A

rem Move the new files to the outgoing directory to be transferred
\FTP\U_SIF013A\scripts\prep_transfer_INSTD.bat
\FTP\U_SIF013A\scripts\prep_transfer_TXACT.bat