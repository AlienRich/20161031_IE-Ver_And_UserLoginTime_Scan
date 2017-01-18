# Read remote machines from a list
$list = Get-Content .\IPList_ALL.txt


###	$CSVOutput = foreach ($machine in $list) {
foreach ($machine in $list) {
$IEVersionString = "NoMsg"
$IEVersionString = [System.Diagnostics.FileVersionInfo]::GetVersionInfo("\\$machine\C$\Program Files\Internet Explorer\iexplore.exe").Fileversion
write-host $machine ":::::::" $IEVersionString

$output = "" | Select-Object -Property Machine,Value
$output.Machine = $machine
$output.Value = $IEVersionString
$output | Export-Csv -Append .\_IEVer_Query_iexplore.exe_FileVer_1-Put.csv
$output.Machine = "NoMsg"
$output.Value = "NoMsg"
$output = "NoMsg"
} # END foreach CSVOutput loop


# Change the output path to ever you want
###	$CSVOutput | Export-Csv -Append .\_IEVer_Query_iexplore.exe_FileVer_1-Put.csv