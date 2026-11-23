$ErrorActionPreference = 'Stop'
$appid = 570
$url = "https://api.steampowered.com/ISteamNews/GetNewsForApp/v2/?appid=$appid&count=1&maxlength=300&feeds=steam_community_announcements"
$dane = Invoke-RestMethod -Uri $url -UseBasicParsing -TimeoutSec 20
$news = $dane.appnews.newsitems[0]

Write-Output "Tytul: $($news.title)"
Write-Output "Link: $($news.url)"
