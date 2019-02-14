
. $PSScriptRoot\functions.ps1

$ServerInformationComponentFunctions = New-UDEndpointInitialization -Function @(
    "Get-ServerData"
)

$ServerInformationComponent = New-UDTable -Title "Server Information" `
    -Headers @("Name", "Value") `
    -Endpoint {
        (Get-ServerData).GetEnumerator() |
            Out-UDTableData -Property @("Name", "Value")
    }

$RandomMonitor = New-UDMonitor -Title "Random Monitor" -Type Line -Endpoint {
    Get-Random -Minimum 0 -Maximum 10 | Out-UDMonitorData
}

Function Get-RandomMonitor{
    param(
        [Parameter(ValueFromPipeline)]
        $Maximum
    )
    process{
        New-UDMonitor -Title "Random Monitor" -Type Line -Endpoint {
            Get-Random -Minimum 0 -Maximum $Maximum | Out-UDMonitorData
        }
    }
}

Function Get-ServerInformationComponent {
    param(
        $ServerName
    )
    process{
        New-UDTable -Title "Server Information" `
            -Headers @("Name", "Value") `
            -Endpoint {
                (Get-ServerData $ServerName).GetEnumerator() |
                    Out-UDTableData -Property @("Name", "Value")
            }
    }
}

Function Get-ServerDetailComponent {
    process{
        New-UDInput -Title "Server Detail Search" -Endpoint {
            param($ModuleName)
            # Output a new card based on that info
            New-UDInputAction -Content @(
                Get-ServerDetailComponent
                Get-ServerInformationComponent $ModuleName
            )
        }
    }
}

Function Get-ServerFileInformationComponent {
    Param(
        $FilePath
    )
    process{
        New-UDTable -Title "Directory Information" `
            -Headers @("Name", "FullName") `
            -Endpoint {
                Get-ChildItem -Path $FilePath |
                    ForEach-Object{@{
                        FullName = $_.FullName
                        Name = $_.Name
                        # OGItem = $_
                    }} |
                    Out-UDTableData -Property @("Name", "FullName")
            }
    }
}

Function Get-FileSearchComponent {
    process{
        New-UDInput -Title "Server Detail Search" -Endpoint {
            param($FilePath)
            New-UDInputAction -Content @(
                Get-FileSearchComponent
                Get-ServerFileInformationComponent $FilePath
            )
        }
    }
}

