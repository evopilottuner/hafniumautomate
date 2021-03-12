Set-ExecutionPolicy Unrestricted
cd\
new-item c:\extemp -itemtype directory
cd c:\extemp
# Source file location
$source = 'https://github.com/microsoft/CSS-Exchange/releases/latest/download/CompareExchangeHashes.ps1'
# Destination to save the file
$destination = 'c:\extemp\CompareExchangeHashes.ps1'
#Download the file
Invoke-WebRequest -Uri $source -OutFile $destination
# Source file location2
$source2 = 'https://github.com/microsoft/CSS-Exchange/releases/latest/download/Test-ProxyLogon.ps1'
# Destination to save the file
$destination2 = 'c:\extemp\Test-ProxyLogon.ps1'
#Download the file
Invoke-WebRequest -Uri $source2 -OutFile $destination2
Get-ExchangeServer | .\Test-ProxyLogon.ps1 -OutPath $home\desktop\logs
.\CompareExchangeHashes.ps1
