@echo off
rem This script is to be run before the file transfer.
CD /D D:\FTP\U_SIF013A

rem Build date string for the filename
set CUR_YYYY=%date:~10,4%
set CUR_MM=%date:~4,2%
set CUR_DD=%date:~7,2%
set CUR_HH=%time:~0,2%
set FILEDATE=%CUR_YYYY%%CUR_MM%%CUR_DD%

rem Save a copy of the file to the archive directory
copy /Y U_SIF013_INSTD.csv file_archive\IncomingStudentRecon_%FILEDATE%.csv

rem Move the file to the outgoing directory to be transferred
move /Y U_SIF013_INSTD.csv outgoing\IncomingStudentRecon_%FILEDATE%.csv
