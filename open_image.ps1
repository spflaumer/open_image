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
    Write-Output "kein bild"
}
# SIG # Begin signature block
# MIIFnQYJKoZIhvcNAQcCoIIFjjCCBYoCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQULPO/SpTGl24ELSece9fwxlH2
# XFegggMzMIIDLzCCAhegAwIBAgIQQcT52TpihqxBs5k9G8jyYzANBgkqhkiG9w0B
# AQsFADAfMR0wGwYDVQQDDBR0ZW1wcHRlbXA2QGdtYWlsLmNvbTAeFw0yMjA2MDcx
# OTIyMDNaFw0yMzA2MDcxOTQyMDNaMB8xHTAbBgNVBAMMFHRlbXBwdGVtcDZAZ21h
# aWwuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2WOOaeXHoQeG
# UK4SrTSd/bu8bwCNiewWKudUMQkF/gl+wT1UtLnUw5zggIMBoLDqC62HFnZMtiTF
# WpCt8eFz1G5u0OEuXAjd1pU3bL0E0DDxMu5LoH8bq1ZPn8HOAmeduZ4UBsf55rGp
# MuATLuQeP00zmfWJSUtH2bUpT+bUFkoGL8VZSm3FDDixmWlnfRskFzq3SAjZmGwO
# qRF85kZF+qE+wJbQbb+i5cw0Xp5ZcbxMcT1cWg1P8WH8ysr4kQvoVNADmx8hIvDR
# 4g7dbFcsUbtfPKC+imR1Alrbty4GQkgsA1fXiY/IvAyphHxlDYIhLP3H0Qd0gipa
# mGbzp9aiRQIDAQABo2cwZTAOBgNVHQ8BAf8EBAMCB4AwEwYDVR0lBAwwCgYIKwYB
# BQUHAwMwHwYDVR0RBBgwFoIUdGVtcHB0ZW1wNkBnbWFpbC5jb20wHQYDVR0OBBYE
# FLOJXk82Hy7Kac7fgVZ6ZNluNq2OMA0GCSqGSIb3DQEBCwUAA4IBAQDTR/BpIXAo
# tzlNrg2EoFpZgXb3krNvFV2aKG+2hQtVbtiWKwBYNeNi9ZGjJWZIdSNeseY5p1C5
# XCyVDfcWA6CpNX2dCA3lhGZMvRN1YLWbwFnPb3JjDTkPNzIAOYBIbyj5anfS9Eul
# J3i+1vK+KNhZ0+WPNsBNDgPNDPkfrm9WwiPt1Ea96971JgBtXXU/n0tit1+J1uxc
# P9A0T17hTwEKqjyLurlxhhX4f1/0j9h/wGyfSEzeRUv93UFRo3hP2btsJ68+Os+G
# Wy+N2tb3374EOqEsxfki3gDioTILr3ELpNbAwsQ/mHp6nRTRlWajiEAYTcmFAvRs
# 27d8dFd8skn/MYIB1DCCAdACAQEwMzAfMR0wGwYDVQQDDBR0ZW1wcHRlbXA2QGdt
# YWlsLmNvbQIQQcT52TpihqxBs5k9G8jyYzAJBgUrDgMCGgUAoHgwGAYKKwYBBAGC
# NwIBDDEKMAigAoAAoQKAADAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgor
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAjBgkqhkiG9w0BCQQxFgQUlPGmgkI4
# +uA6QD1rx/zZn1+3MrMwDQYJKoZIhvcNAQEBBQAEggEAPxAnOtWHbotgT3WpdBlD
# 3QUMljdTNqpY0enKia5RT4x4dG+Umve2JdHU90i9iiarfg5ycme9VXJWjPHCXloS
# LZrRRONb3IvGTopeU4z8eWWOGiqfABap9+e7DWEojJZ12W0+7P+1v1/PUU9WyULD
# X3sBxlFdwUquYib6GV/+uERWw01ypst9AcnZdW37zQf0JIfA4jk2lsGIUSMzfMN3
# viZa/u7yBUyLDngaaOhH4t8r0AcXshiCDnfjL1ZGbM0koE1brC6a0HoF/1KWS8pL
# 7idDACafYmJQnhaFAMVcB+xG/i6L9N4gIDce8HP7XbYf2/3Xudsnzu5jrFx2vYlG
# jA==
# SIG # End signature block
