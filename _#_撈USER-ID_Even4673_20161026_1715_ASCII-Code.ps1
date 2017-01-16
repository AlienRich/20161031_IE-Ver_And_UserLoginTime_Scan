$IE8IPLIST = ".\_#_IE8IPLIST.txt"
$DayTime = get-date -Format yyyyMMddHHmm
Get-Content -Path $IE8IPLIST | Foreach-Object { $IE8IP = $_
$RunDayTime = get-date -Format yyyyMMddHHmm
write-host "$RunDayTime ::: 撈取：$IE8IP" -ForegroundColor GREEN

$QueryPC = Get-WinEvent -Computer $IE8IP -FilterHashtable @{Logname='Security';ID=4673} -MaxEvents 100 | select MachineName,TimeCreated,@{N='DomainORHostName';E={$_.Properties[2].Value}},@{N='UserID';E={$_.Properties[1].Value}},@{N='SID';E={$_.Properties[0].Value}} | sort  -Property TimeCreated
write-host "$QueryPC" -ForegroundColor GREEN
$PCinfo = $QueryPC | where {$_.DomainORHostName -like "KGIBANK" -and $_.UserID -cnotlike "P*" -and $_.UserID -cnotlike "N*" -and $_.UserID -cnotlike "T*" -and $_.UserID -cnotlike "*$"} | select UserID,MachineName,DomainORHostName -Unique

$Replace1="使用者名稱"
$Replace2="全名"
$userID= $PCinfo.UserID.Replace("$","")
$userID | Foreach-Object { $1UserID = $_
	$QueryUserID = net user $1UserID /domain
	$UserDomainID = ($QueryUserID[2].Replace("$Replace1","")).Replace(" ","")
	$UserName = (($QueryUserID[3].Replace("$Replace2","")).Replace(" ","")).Replace(";","")
	$UserAllInfo = $IE8IP +","+ $userID +","+ $UserDomainID +","+ $UserName
	write-host "$UserAllInfo" -ForegroundColor CYAN
	#####################################################
	$UserAllInfo | Out-File -Append -FilePath .\_$DayTime-4673-DomainID.txt
	####	$QueryPC | ? {$_.DomainOrHostName -like "kgibank" -and $_.UserID -cnotlike "*$" -and $_.UserID -cnotlike "LOCAL SERVICE"} | select -Unique MachineName,DomainORHostName,UserID
	####	$PCinfo = $QueryPC | ? {$_.UserID -cnotlike "*$" -and $_.UserID -cnotlike "LOCAL SERVICE"} | select UserID,MachineName,DomainORHostName -Unique
	$PCinfo | Add-Member -MemberType NoteProperty -Name IPAndUserInfo -Value $UserAllInfo -Force
	$PCinfo | Export-Csv -Encoding utf8 -NoTypeInformation -Append -Path _$DayTime-Even4673-PCInfo_And_DomainID.csv
	#####################################################

	$1UserID="NOMSG"
	$QueryUserID="NOMSG"
	$UserDomainID="NOMSG"
	$UserName="NOMSG"
	$UserAllInfo="NOMSG"
	}
	$IE8IP="NOMSG"
	$RunDayTime="NOMSG"
	$QueryPC="NOMSG"
	$PCinfo="NOMSG"
	$userID="NOMSG"
}