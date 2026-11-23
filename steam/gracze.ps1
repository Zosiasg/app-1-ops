$ErrorActionPreference = 'Stop'
$appid = 570
$url = "https://api.steampowered.com/ISteamUserStats/GetNumberOfCurrentPlayers/v1/?appid=$appid"
$dane = Invoke-RestMethod -Uri $url -UseBasicParsing -TimeoutSec 20

Write-Output "Gra (AppID): $appid"
Write-Output "Aktywni gracze: $($dane.response.player_count)"
