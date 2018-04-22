$servername = "Localhost"

Get-WmiObject win32_service -ComputerName $servername | where{$_.startmode -eq 'Auto' -and $_.state -eq 'stopped'}|select name,startmode,State,Status | Export-Csv -Path C:\users\Arun\Desktop\shellscript\Service.csv