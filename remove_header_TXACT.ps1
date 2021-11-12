# remove the header line from the file
param ($FileName='U_SIF013_TXACT.csv')

set-location -path "D:\FTP\U_SIF013A\"

# Count the number of non-blank lines in the file.
$measure = Get-Content -Path $FileName | Measure-Object
$lines = $measure.Count

if ($lines -gt 1) {
#Note: If the file has 1 line, Get-Content returns a character string of the 1 line,
# but if the file has more than 1 line, Get-Content returns an array of lines.
	(Get-Content -Path $FileName | Select-Object -Skip 1) | Set-Content -Path $FileName
}