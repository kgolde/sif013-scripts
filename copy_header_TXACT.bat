CD /D D:\FTP\U_SIF013A

rem Start a new output file containing a header with field names in correct order.
COPY /Y file_headers\U_SIF013_TXACT.field-order.csv U_SIF013_TXACT.csv

rem Clean out the old file from the outgoing directory.
if exist outgoing\u_sif013_insur_transaction.csv del /Q outgoing\u_sif013_insur_transaction.csv
