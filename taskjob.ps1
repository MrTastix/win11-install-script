### Register Taskjob ###
function taskjob {
    $taskname = 'WinGet AutoUpgrade & Cleanup'
    Write-Host -ForegroundColor Yellow "Checking for Taskjob..."
    if ($(Get-ScheduledTask -TaskName $taskname -ErrorAction SilentlyContinue).TaskName -eq $taskname) {
        Write-Host -ForegroundColor Yellow "Taskjob already exists. Do you want to update to newer version? (y/n)"
        $update = Read-Host
        if ($update -eq 'y' -or $update -eq 'Y') {
            Unregister-ScheduledTask -TaskName $taskname -Confirm:$False -ErrorAction SilentlyContinue
            Write-Host -ForegroundColor Yellow "Taskjob updating..."
            [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls13
            Invoke-WebRequest -Uri https://github.com/MrTastix/win11-install-script/raw/main/WinGet%20AutoUpgrade%20%26%20Cleanup.xml -OutFile '$taskjob' 
            Register-ScheduledTask -xml (Get-Content '$taskjob' | Out-String) -TaskName $taskname
            Write-Host -ForegroundColor Green "Taskjob successfully updated."
            Pause
            Clear-Host
        }
        else {
            Write-Warning "Taskjob not updated."
            Pause
            Clear-Host
        }
    }
    else {
        Write-Host -ForegroundColor Yellow "Installing taskjob..."
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls13
        Invoke-WebRequest -Uri https://github.com/MrTastix/win11-install-script/raw/main/WinGet%20AutoUpgrade%20%26%20Cleanup.xml -OutFile '$taskjob' 
        Register-ScheduledTask -xml (Get-Content '$taskjob' | Out-String) -TaskName $taskname
        Write-Host -ForegroundColor Green "Taskjob successfully installed."
        Pause
        Clear-Host
    }
    Pause
    Clear-Host
}