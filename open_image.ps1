Install-Script -Name ScriptRequireLicenseAcceptance

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
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQULvO1CVGbpL0r10FSGHCCR08i
# f3GgggMzMIIDLzCCAhegAwIBAgIQQcT52TpihqxBs5k9G8jyYzANBgkqhkiG9w0B
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
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAjBgkqhkiG9w0BCQQxFgQU/5UMYMeD
# mdUMK0gm08JuYWyhfL0wDQYJKoZIhvcNAQEBBQAEggEAAVfSfEuyFKvTCV6cPLeo
# IPPb1BzIc/N5plwaL9K9erZY2lGlgrvmaXuav3uATilCthSUrT1GzbVBVpven+Ei
# iutD+c2gLn7toXcUFXaksJVcdi0IC40+CHphAH0SP0muAXxkueu2tc7NHiay69Z2
# eXNBV0pkUKSMErmjp6/MRIqqJKk6jr80RhHdx723lXHpjDeGkuqMw8Fro45Cmr1l
# ItwG9SXhIbAkbQtOBIbKqynnTv3ygaqXeiaU0y0UCkJQtmpeL7QahazpvNqg3vPj
# dlD+ExarBeWCVh7AwJOOfT7CKxvI35KJAYV7p4nRIfq2W9LN+a1hnmHNjZqguW0G
# Nw==
# SIG # End signature block
