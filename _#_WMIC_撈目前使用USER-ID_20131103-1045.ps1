$IE8IPLIST = ".\IPList_ALL.txt"
$DayTime = get-date -Format yyyyMMddHHmm
Get-Content -Path $IE8IPLIST | Foreach-Object { $IE8IP = $_
$RunDayTime = get-date -Format yyyyMMddHHmm
write-host "$RunDayTime ::: 撈取：$IE8IP" -ForegroundColor GREEN

######撈曾經登入的USER-ID
###		$QueryPC = Get-WmiObject -Class Win32_NetworkLoginProfile -Computer $IE8IP | Sort-Object -Property LastLogon -Descending | Select-Object -Unique -Property PSComputerName,Name,Comment,FullName,LastLogon -First 50
###		$PCinfo = $QueryPC | where {$_.Name -like "KGIBANK\0*" -or $_.Name -like "KGIBANK\1*" -or $_.Name -like "KGIBANK\2*"} | select * -Unique

#####撈現在登入的USER-ID
$QueryPC = Get-WmiObject -Class win32_computersystem -Computer $IE8IP | Select-Object -Property PSComputerName,Domain,UserName
$PCinfo = $QueryPC | where {$_.UserName -like "KGIBANK\0*" -or $_.UserName -like "KGIBANK\1*" -or $_.UserName -like "KGIBANK\2*"} | select * -Unique

$PCUserIP = $PCinfo
$PCUserIP | Add-Member -MemberType NoteProperty -Name ScanIP -Value "$IE8IP" -Force
$PCUserIP | Export-Csv -NoTypeInformation -Encoding UTF8 -Append -PATH .\_$DayTime-PC-and-NowLoginID.csv
write-host "$PCUserIP" -ForegroundColor CYAN

$AllUserID = $PCUserIP | select UserName
$GetPCName = $PCUserIP | select PSComputerName -Unique
$PCName = $GetPCName.PSComputerName
$UserID = $AllUserID.UserName.Replace("KGIBANK\","")

$Replace1="使用者名稱"
$Replace2="全名"

$userID | Foreach-Object { $1UserID = $_
	$QueryUserID = net user $1UserID /domain
	$UserDomainID = ($QueryUserID[2].Replace("$Replace1","")).Replace(" ","")
	$UserName = (($QueryUserID[3].Replace("$Replace2","")).Replace(" ","")).Replace(";","")
	$UserAllInfo = $1UserID +";"+ $UserDomainID +";"+ $UserName
	write-host "$PCName [$IE8IP] :::: $UserAllInfo" -ForegroundColor DarkMagenta
	#####################################################
	$1UserIDandPCName = $GetPCName
	$1UserIDandPCName | Add-Member -MemberType NoteProperty -Name ScanIP $IE8IP -Force
	$1UserIDandPCName | Add-Member -MemberType NoteProperty -Name UserInfo $UserAllInfo -Force
	$1UserIDandPCName | Export-Csv -Encoding utf8 -NoTypeInformation -Append -Path .\_$DayTime-PCInfo_And_NowLoginID-UserName.csv
	#####################################################

	$1UserID="NOMSG"
	$QueryUserID="NOMSG"
	$UserDomainID="NOMSG"
	$UserName="NOMSG"
	$UserAllInfo="NOMSG"
	$1UserIDandPCName="NOMSG"
	}
	
$IE8IP="NOMSG"
$RunDayTime="NOMSG"
$QueryPC="NOMSG"
$PCinfo="NOMSG"
$PCUserIP="NOMSG"
$AllUserID="NOMSG"
$GetPCName="NOMSG"
$PCName="NOMSG"
$userID="NOMSG"
}