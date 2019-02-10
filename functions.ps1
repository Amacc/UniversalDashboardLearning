# Functions to dot source for use with the universal dashboard

function Get-ServerData {
    param(
        [Alias("ComputerName")]
        $ServerName = $env:COMPUTERNAME
    )
    process{
        return @{
            'Computer Name' = $ServerName

            'Operating System' = (
                Get-CimInstance -ClassName Win32_OperatingSystem `
                    -ComputerName $ServerName
            ).Caption

            'Total Disk Space (C:)' = (
                Get-CimInstance -ClassName Win32_LogicalDisk `
                    -ComputerName $ServerName `
                    -Filter "DeviceID='C:'"
                ).Size / 1GB |
                    ForEach-Object { "$([Math]::Round($_, 2)) GBs " }

            'Free Disk Space (C:)' = (
                Get-CimInstance -ClassName Win32_LogicalDisk `
                    -ComputerName $ServerName `
                    -Filter "DeviceID='C:'"
                ).FreeSpace / 1GB |
                    ForEach-Object { "$([Math]::Round($_, 2)) GBs " }
        }
    }
}

