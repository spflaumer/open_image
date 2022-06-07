$image_list = (Get-ChildItem -r | ForEach-Object { if ($_.PsIsContainer) { $_.FullName + "\" } else { $_.FullName } })

Add-Type -AssemblyName System.Windows.Forms

for ($i = 0; $i -lt $image_list.Count; $i++) {
    Write-Output $image_list[$i]
    if($image_list[$i] -Like "*.jpg" -or $image_list[$i] -Like "*.png" -or $image_list[$i] -Like "*.jpeg"){
        Write-Output "Drücke Enter um das Bild zu zeigen"
        Pause
        Start-Process $image_list[$i] -WindowStyle maximized
        Start-Sleep -Seconds 1
        [System.Windows.Forms.SendKeys]::SendWait("{F11}")
        Start-Sleep -Seconds 1
        [System.Windows.Forms.SendKeys]::SendWait("^0")
        Pause
        Stop-Process -Name "Microsoft.Photos"
    }
    Write-Output "not jpg"
}
