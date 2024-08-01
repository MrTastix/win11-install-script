# Created by Kugane
# Modified by MrTastix

### Here can you add apps that you want to configure during installation ###
### Use https://winstall.app to find out the id of each app you wish to install ###

### NOTE: These specific apps are intended to be installed on the D drive (HDD)
$app = @(
    "7zip.7zip"
    "Audacity.Audacity"
    "AutoHotkey.AutoHotkey"
    "Cockos.REAPER"
    "EpicGames.EpicGamesLauncher"
    "Levitsky.FontBase"
    "GOG.Galaxy"
    "Greenshot.Greenshot"
    "REALiX.HWiNFO"
    "bcssov.IronyModManager"
    "Obsidian.Obsidian"
    "Microsoft.VisualStudioCode"
    "Python.Python.3.12"
    "qBittorrent.qBittorrent"
    "ebkr.r2modman"
    "Microsoft.Sysinternals.ProcessExplorer"
    "Microsoft.Sysinternals.ProcessMonitor"
    "Microsoft.Sysinternals.Sysmon"
    "Microsoft.Sysinternals.TCPView"
    "Microsoft.PowerToys"
    "Microsoft.dotnet"
    "Mozilla.Thunderbird"
    "Mozilla.Firefox"
    "Google.Chrome"
    "WinSCP.WinSCP"
    "Oracle.VirtualBox"
    "Adobe.CreativeCloud"   # Will need to download each Adobe app individually, though
    "TheDocumentFoundation.LibreOffice"
    "Nvidia.GeForceExperience"
    "GitHub.GitHubDesktop"
    "Bitwarden.Bitwarden"
    "RedactSoftware.Redact"
    "AntibodySoftware.WizTree"
    "SteelSeries.GG"
    "WowUp.Wowup"
    "Overwolf.Curseforge"
    "Oracle.JavaRuntimeEnvironment"
    "OpenAL.OpenAL"
    "MPC-BE.MPC-BE"
    "IDRIX.VeraCrypt"
    "Discord.Discord"
    "Microsoft.VCRedist.2015+.x64"
    "Microsoft.VCRedist.2015+.x86"
    "Zoom.Zoom"
    "9P6RC76MSMMJ"          # Prime Video
    "9N7F2SM5D1LR"          # Windows HDR Calibration
    "9PMMSR1CGPWG"          # HEIF-PictureExtension
    "9MVZQVXJBQ9V"          # AV1 VideoExtension
    "9NCTDW2W1BH8"          # Raw-PictureExtension
    "9N95Q1ZZPMH4"          # MPEG-2-VideoExtension
    "Gyan.FFmpeg"
);

### List of apps that cannot be obtained through winget (for future reference)
# Wireshark
# DaVinci Resolve
# Battle.net Launcher
# Awakened PoE Trade
# SE.live, StreamElements OBS fork
# TegraRCMGUI
# BlockTheSpot

$bloatware = @(
    # default Windows 11 apps
    "MicrosoftTeams"
    "Microsoft.Todos"
    "Microsoft.PowerAutomateDesktop"

    # Win 11 22h2
    "Clipchamp.Clipchamp"
    "MicrosoftCorporataionII.MicrosoftFamily"
    "BytedancePte.Ltd.TikTok"
    "FACEBOOK.317180B0BB486"
    "Facebook.Instagram*"
    "22364Disney.ESPN*"

    # Windows 11 23h2
    "Microsoft.OutlookForWindows"
    "Microsoft.Windows.DevHomeAzureExtension"           # DEV Home
    "Microsoft.Windows.Ai.Copilot.Provider"         # Copilot

    # default Windows 10 apps
    "Microsoft.549981C3F5F10"           # Cortana Offline
    "Microsoft.OneDriveSync"            # Onedrive
    "Microsoft.3DBuilder"
    "Microsoft.BingFinance"
    "Microsoft.BingNews"
    "Microsoft.BingSports"
    "Microsoft.BingTranslator"
    "Microsoft.BingWeather"
    "Microsoft.FreshPaint"
    #"Microsoft.GamingServices"
    "Microsoft.MicrosoftOfficeHub"
    "Microsoft.MicrosoftPowerBIForWindows"
    "Microsoft.MicrosoftSolitaireCollection"
    "Microsoft.MicrosoftStickyNotes"
    "Microsoft.MinecraftUWP"
    "Microsoft.NetworkSpeedTest"
    "Microsoft.Office.OneNote"
    "Microsoft.People"
    "Microsoft.Print3D"
    "Microsoft.SkypeApp"
    "Microsoft.Wallet"
    #"Microsoft.Windows.Photos"
    "Microsoft.WindowsAlarms"
    #"Microsoft.WindowsCalculator"
    #"Microsoft.WindowsCamera"
    #"microsoft.windowscommunicationsapps"          # Mail and Calender     
    "Microsoft.WindowsMaps"
    "Microsoft.WindowsPhone"
    "Microsoft.WindowsSoundRecorder"
    #"Microsoft.WindowsStore"           # can't be re-installed
    "Microsoft.ZuneVideo"
    "Microsoft.YourPhone"
    #"Microsoft.MSPaint"            # Paint & Paint3D
    #"Microsoft.ZuneMusic"          # New Media Player in Windows

    # Xbox Apps
    #"Microsoft.Xbox.TCUI"
    #"Microsoft.XboxApp"
    #"Microsoft.XboxGameOverlay"
    #"Microsoft.XboxSpeechToTextOverlay"
    #"Microsoft.XboxGamingOverlay"
    #"Microsoft.XboxIdentityProvider"
    #"Microsoft.XboxSpeechToTextOverlay"

    # Threshold 2 apps
    "Microsoft.GetHelp"
    "Microsoft.Getstarted"
    "Microsoft.Messaging"
    "Microsoft.Office.Sway"
    "Microsoft.OneConnect"
    "Microsoft.WindowsFeedbackHub"

    # Creators Update apps
    "Microsoft.Microsoft3DViewer"

    #Redstone apps
    "Microsoft.BingFoodAndDrink"
    "Microsoft.BingHealthAndFitness"
    "Microsoft.BingTravel"
    "Microsoft.WindowsReadingList"

    # Redstone 5 apps
    "Microsoft.MixedReality.Portal"
    "Microsoft.Whiteboard"

    # non-Microsoft
    #"4DF9E0F8.Netflix"
    #"SpotifyAB.SpotifyMusic"
    "2FE3CB00.PicsArt-PhotoStudio"
    "46928bounde.EclipseManager"
    "613EBCEA.PolarrPhotoEditorAcademicEdition"
    "6Wunderkinder.Wunderlist"
    "7EE7776C.LinkedInforWindows"
    "89006A2E.AutodeskSketchBook"
    "9E2F88E3.Twitter"
    "A278AB0D.DisneyMagicKingdoms"
    "A278AB0D.MarchofEmpires"
    "ActiproSoftwareLLC.562882FEEB491"
    "CAF9E577.Plex"
    "ClearChannelRadioDigital.iHeartRadio"
    "D52A8D61.FarmVille2CountryEscape"
    "D5EA27B7.Duolingo-LearnLanguagesforFree"
    "DB6EA5DB.CyberLinkMediaSuiteEssentials"
    "DolbyLaboratories.DolbyAccess"
    "DolbyLaboratories.DolbyAccess"
    "Drawboard.DrawboardPDF"
    "Facebook.Facebook"
    "Fitbit.FitbitCoach"
    "Flipboard.Flipboard"
    "GAMELOFTSA.Asphalt8Airborne"
    "KeeperSecurityInc.Keeper"
    "NORDCURRENT.COOKINGFEVER"
    "PandoraMediaInc.29680B314EFC2"
    "Playtika.CaesarsSlotsFreeCasino"
    "ShazamEntertainmentLtd.Shazam"
    "SlingTVLLC.SlingTV"
    "TheNewYorkTimes.NYTCrossword"
    "ThumbmunkeysLtd.PhototasticCollage"
    "TuneIn.TuneInRadio"
    "WinZipComputing.WinZipUniversal"
    "XINGAG.XING"
    "flaregamesGmbH.RoyalRevolt2"
    "king.com.*"
    "king.com.BubbleWitch3Saga"
    "king.com.CandyCrushSaga"
    "king.com.CandyCrushSodaSaga"
);

#############################################################################################
################################ Don't change anything below ################################
#############################################################################################

### Install WinGet ###
# Idea from this gist: https://gist.github.com/crutkas/6c2096eae387e544bd05cde246f23901
$hasPackageManager = Get-AppxPackage -Name 'Microsoft.Winget.Source' | Select Name, Version
$hasVCLibs = Get-AppxPackage -Name 'Microsoft.VCLibs.140.00.UWPDesktop' | Select Name, Version
$hasXAML = Get-AppxPackage -Name 'Microsoft.UI.Xaml.2.7*' | Select Name, Version
$hasAppInstaller = Get-AppxPackage -Name 'Microsoft.DesktopAppInstaller' | Select Name, Version
$DesktopPath = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::Desktop)
$errorlog = "$DesktopPath\winget_error.log"

### Install Apps silent ###
function install_silent {
    Clear-Host
    Write-Host -ForegroundColor Cyan "Installing new Apps"
    Foreach ($app in $apps) {
        $listApp = winget list --exact --accept-source-agreements -q $app
        if (![String]::Join("", $listApp).Contains($app)) {
            Write-Host -ForegroundColor Yellow  "Install:" $app
            # MS Store apps
            if ((winget search --exact -q $app) -match "msstore") {
                winget install --exact --accept-source-agreements --accept-package-agreements $app --source msstore
            }
            # All other Apps
            else {
                winget install --exact --scope machine --accept-source-agreements --accept-package-agreements $app
            }
            if ($LASTEXITCODE -eq 0) {
                Write-Host -ForegroundColor Green "$app successfully installed."
            }
            else {
                $app + " couldn't be installed." | Add-Content $errorlog
                Write-Warning "$app couldn't be installed."
                Write-Host -ForegroundColor Yellow "Write in $errorlog"
                Pause
            }  
        }
        else {
            Write-Host -ForegroundColor Yellow "$app already installed. Skip..."
        }
    }
    Pause
}

### Debloating ###
# Based on this gist: https://github.com/W4RH4WK/Debloat-Windows-10/blob/master/scripts/remove-default-apps.ps1
function debloating {
    Clear-Host
    Write-Host -ForegroundColor Cyan "Removing bloatware..."
    Foreach ($blt in $bloatware) {
        $package = Get-AppxPackage -AllUsers $blt
        if ($package -ne $null) {
            Write-Host -ForegroundColor Red "Removing: $blt"
            $package | Remove-AppxPackage
        } else {
            Write-Host "$blt not found. Skip..."
        }
    }
    Pause
}

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
            Invoke-WebRequest -Uri https://github.com/Kugane/winget/raw/main/WinGet%20AutoUpgrade%20%26%20Cleanup.xml -OutFile '$taskjob' 
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
        Invoke-WebRequest -Uri https://github.com/Kugane/winget/raw/main/WinGet%20AutoUpgrade%20%26%20Cleanup.xml -OutFile '$taskjob' 
        Register-ScheduledTask -xml (Get-Content '$taskjob' | Out-String) -TaskName $taskname
        Write-Host -ForegroundColor Green "Taskjob successfully installed."
        Pause
        Clear-Host
    }
    Pause
    Clear-Host
}

### Get List of installed Apps ###
function get_list {
    Clear-Host
    $newPath = ("$DesktopPath\applist_$env:COMPUTERNAME" + "_" + $(Get-Date -Format 'yyyy_MM_dd') + ".txt")
    Write-Host -ForegroundColor Yellow "Generating Applist..."
    winget list > $newPath
    Write-Host -ForegroundColor Magenta "List saved in $newPath"
}

### Finished ###
function finish {
    Write-Host
    Write-Host -ForegroundColor Magenta  "Installation finished"
    Write-Host
    Pause
}

function check_rights {
    If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
    {
        Write-Warning "The script needs to be executed with administrator privileges."
        Break
    }
}

### Question what to do ###
function menu {
    [string]$Title = 'Winget Menu'
    Clear-Host
    Write-Host "================ $Title ================"
    Write-Host
    Write-Host "1: Do all steps below"
    Write-Host
    Write-Host "2: Just install winget"
    Write-Host
    Write-Host "3: Install Apps under graphical"
    Write-Host "4: Install Apps under apps"
    Write-Host "5: Remove bloatware"
    Write-Host
    Write-Host "6: Install Taskjob for automatic updates"
    Write-Host "7: Get List of all installed Apps"
    Write-Host
    Write-Host -ForegroundColor Magenta "0: Quit"
    Write-Host
 
    $actions = "0"
    while ($actions -notin "0..7") {
    $actions = Read-Host -Prompt 'What you want to do?'
        if ($actions -in 0..7) {
            if ($actions -eq 0) {
                exit
            }
            if ($actions -eq 1) {
                install_winget
                install_gui
                install_silent
                debloating
                taskjob
                finish
            }
            if ($actions -eq 2) {
                install_winget
                finish
            }
            if ($actions -eq 3) {
                install_winget
                install_gui
                finish
            }
            if ($actions -eq 4) {
                install_winget
                install_silent
                finish
            }
            if ($actions -eq 5) {
                debloating
                finish
            }
            if ($actions -eq 6) {
                taskjob
                finish
            }
            if ($actions -eq 7) {
                install_winget
                get_list
            }
            menu
        }
        else {
            menu
        }
    }
}
check_rights
menu