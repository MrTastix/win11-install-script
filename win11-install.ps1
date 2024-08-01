# Created by Kugane
# Modified by MrTastix

### Here can you add apps that you want to configure during installation ###
### Use https://winstall.app to find out the id of each app you wish to install ###

### NOTE: These specific apps are intended to be installed on the D drive (HDD)
$app = @(
    "7zip.7zip"
    "Audacity.Audacity"
    "AutoHotKey.AutoHotKey"
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

function install_winget {
    Clear-Host
    Write-Host -ForegroundColor Yellow "Checking if WinGet is installed"
    if (!$hasPackageManager) {
            if ($hasVCLibs.Version -lt "14.0.30035.0") {
                Write-Host -ForegroundColor Yellow "Installing VCLibs dependencies..."
                Add-AppxPackage -Path "https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx"
                Write-Host -ForegroundColor Green "VCLibs dependencies successfully installed."
            }
            else {
                Write-Host -ForegroundColor Green "VCLibs is already installed. Skip..."
            }
            if ($hasXAML.Version -lt "7.2203.17001.0") {
                Write-Host -ForegroundColor Yellow "Installing XAML dependencies..."
                Add-AppxPackage -Path "https://github.com/Kugane/winget/raw/main/Microsoft.UI.Xaml.2.7_7.2203.17001.0_x64__8wekyb3d8bbwe.Appx"
                Write-Host -ForegroundColor Green "XAML dependencies successfully installed."
            }
            else {
                Write-Host -ForegroundColor Green "XAML is already installed. Skip..."
            }
            if ($hasAppInstaller.Version -lt "1.16.12653.0") {
                Write-Host -ForegroundColor Yellow "Installing WinGet..."
    	        $releases_url = "https://api.github.com/repos/microsoft/winget-cli/releases/latest"
    		    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls13
    		    $releases = Invoke-RestMethod -Uri "$($releases_url)"
    		    $latestRelease = $releases.assets | Where-Object { $_.browser_download_url.EndsWith("msixbundle") } | Select-Object -First 1
    		    Add-AppxPackage -Path $latestRelease.browser_download_url
                Write-Host -ForegroundColor Green "WinGet successfully installed."
            }
    }
    else {
        Write-Host -ForegroundColor Green "WinGet is already installed. Skip..."
        Write-Host ""
        }
    Pause
}

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
                winget install --exact --silent --accept-source-agreements --accept-package-agreements $app --source msstore
            }
            # All other Apps
            else {
                winget install --exact --silent --scope machine --accept-source-agreements --accept-package-agreements $app
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