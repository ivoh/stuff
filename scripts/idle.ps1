$setNumLockOn = $true
$wsh = New-Object -ComObject WScript.Shell

do 
{
    Write-Host -NoNewline "."
    $wsh.SendKeys('{NUMLOCK}{NUMLOCK}')
    If ($setNumLockOn) {
        Start-Sleep -Milliseconds 300
        if (![console]::NumberLock) {
            $wsh.SendKeys('{NUMLOCK}')
        }
    }
    Start-Sleep -Seconds 300
}
while ($true)