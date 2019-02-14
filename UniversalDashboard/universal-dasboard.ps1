# Dashboard File
# . $PSScriptRoot/components.ps1
. $PSScriptRoot/endpoints.ps1
. $PSScriptRoot/pages.ps1

Start-UDDashboard `
    -Endpoint @(
        $EveryHour, $ModuleCount, $CachedModuleCount,
        $report
    ) `
    # -EndpointInitialization (
    #     New-UDEndpointInitialization -Function @(
    #         "Get-ServerData"
    #     )
    # ) `
    -Dashboard (
        # -EndpointInitialization $ServerInformationComponentFunctions `
        New-UDDashboard -Title "Test Dashboard" `
            -EndpointInitializationScript {
                Import-Module
                # .  $PSScriptRoot\functions.ps1
                # # $TargetDrive = "C:\"
            }
            -Content {
                    New-UDCounter -Title "Test" -Id "Counter" -Endpoint {
                        $Cache:ModuleCount
                    } -AutoRefresh -RefreshInterval 1

                    New-UDInput -Title "Module Info Locator" -Endpoint {
                        param($ModuleName)

                        # Get a module from the gallery
                        $Module = Find-Module $ModuleName

                        # Output a new card based on that info
                        New-UDInputAction -Content @(
                            New-UDCard -Title "$ModuleName - $($Module.Version)" -Text $Module.Description
                        )
                    }

                    New-UDInput -Title "User Data" -Endpoint {
                        param($FilePath, [bool]$Yes)
                        if ($Yes) {
                            New-UDInputAction -Toast "Yes, $FilePath"
                        } else {
                            New-UDInputAction -Toast "No, $FilePath"
                        }
                    }
                    New-UDMonitor -Title "Downloads per second" -Type Line -Endpoint {
                        Get-Random -Minimum 0 -Maximum 10 | Out-UDMonitorData
                    }
                    New-UDTable -Title "Server Information" -Headers @("Name", "Value") -Endpoint {
                        @{
                            'Computer Name' = $env:COMPUTERNAME
                            'Operating System' = (Get-CimInstance -ClassName Win32_OperatingSystem).Caption
                            'Total Disk Space (C:)' = (Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DeviceID='C:'").Size / 1GB | ForEach-Object { "$([Math]::Round($_, 2)) GBs " }
                            'Free Disk Space (C:)' = (Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DeviceID='C:'").FreeSpace / 1GB | ForEach-Object { "$([Math]::Round($_, 2)) GBs " }
                        }.GetEnumerator() | Out-UDTableData -Property @("Name", "Value")
                    }
        }
    )
