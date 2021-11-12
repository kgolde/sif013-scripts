# edit the header line of the file, replacing underscores with blanks.
param ($FileName='U_SIF013_INSTD.csv')

set-location -path "D:\FTP\U_SIF013A\"

# Count the number of non-blank lines in the file.
$measure = Get-Content -Path $FileName | Measure-Object
$lines = $measure.Count

if ($lines -gt 1) {
#Note: If the file has 1 line, Get-Content returns a character string of the 1 line,
# but if the file has more than 1 line, Get-Content returns an array of lines.
	$FileContent = Get-Content -Path $FileName
	$FileContent[0] = $FileContent[0] -replace '_', ' '
	$FileContent | Set-Content -Path $FileName
}