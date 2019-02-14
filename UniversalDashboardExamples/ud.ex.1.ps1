$Colors = @{
    BackgroundColor = "#252525"
    FontColor = "#FFFFFF"
}

$AlternateColors = @{
    BackgroundColor = "#4081C9"
    FontColor = "#FFFFFF"
}

$ScriptColors = @{
    BackgroundColor = "#5A5A5A"
    FontColor = "#FFFFFF"
}

$NavBarLinks = @((New-UDLink -Text "Buy Universal Dashboard" -Url "https://poshtools.com/buy-powershell-pro-tools/universal-dashboard/" -Icon heart_o),
                 (New-UDLink -Text "Documentation" -Url "https://adamdriscoll.gitbooks.io/powershell-universal-dashboard/content/" -Icon book))

$Components = New-UDPage -Name Components -Icon area_chart -Content {
    New-UDRow {
        New-UDColumn -Size 3 {
            New-UDCard  @AlternateColors -Title "Charts" -Text "Display data in different types of charts. Define your data using PowerShell scripts. Configure colors, data sets, and update frequency."
        }
        New-UDColumn -Size 9 {
            New-UDCard @ScriptColors -Language "PowerShell Script for a Chart" -Text 'New-UDChart -Title "Feature by operating system (Area)" -Type Area -AutoRefresh -RefreshInterval 7 -Endpoint {
    $features = @();
    $features += [PSCustomObject]@{ "OperatingSystem" = "Windows 10"; "FormsDesigner" = (Get-Random -Minimum 10 -Maximum 10000); "WPFDesigner" = (Get-Random -Minimum 10 -Maximum 10000); "UniversalDashboard" = (Get-Random -Minimum 10 -Maximum 10000) }
    $features += [PSCustomObject]@{ "OperatingSystem" = "Windows 8"; "FormsDesigner" = (Get-Random -Minimum 10 -Maximum 10000); "WPFDesigner" = (Get-Random -Minimum 10 -Maximum 10000); "UniversalDashboard" = (Get-Random -Minimum 10 -Maximum 10000) }
    $features += [PSCustomObject]@{ "OperatingSystem" = "Windows 7"; "FormsDesigner" = (Get-Random -Minimum 10 -Maximum 10000); "WPFDesigner" = (Get-Random -Minimum 10 -Maximum 10000); "UniversalDashboard" = (Get-Random -Minimum 10 -Maximum 10000) }
    $features += [PSCustomObject]@{ "OperatingSystem" = "Ubuntu 16.04"; "FormsDesigner" = (Get-Random -Minimum 10 -Maximum 10000); "WPFDesigner" = (Get-Random -Minimum 10 -Maximum 10000); "UniversalDashboard" = (Get-Random -Minimum 10 -Maximum 10000) }
    $features| Out-UDChartData -LabelProperty "OperatingSystem" -Dataset @(
        New-UDChartDataset -DataProperty "FormsDesigner" -Label "Forms Designer" -BackgroundColor "#80962F23" -HoverBackgroundColor "#80962F23"
        New-UDChartDataset -DataProperty "WPFDesigner" -Label "WPF Designer" -BackgroundColor "#8014558C" -HoverBackgroundColor "#8014558C"
        New-UDChartDataset -DataProperty "UniversalDashboard" -Label "Universal Dashboard" -BackgroundColor "#803AE8CE" -HoverBackgroundColor "#803AE8CE"
    )
}' -Title "PowerShell"
        }
    }
    New-UDRow {
        New-UDColumn -Size 4 {
            New-UDChart -Title "Feature by operating system (Bar)" -Type Bar -AutoRefresh -RefreshInterval 7 @Colors -Endpoint {
                $features = @();
                $features += [PSCustomObject]@{ "OperatingSystem" = "Windows 10"; "FormsDesigner" = (Get-Random -Minimum 10 -Maximum 10000);  "WPFDesigner" = (Get-Random -Minimum 10 -Maximum 10000);  "UniversalDashboard" = (Get-Random -Minimum 10 -Maximum 10000) }
                $features += [PSCustomObject]@{ "OperatingSystem" = "Windows 8"; "FormsDesigner" = (Get-Random -Minimum 10 -Maximum 10000);  "WPFDesigner" = (Get-Random -Minimum 10 -Maximum 10000);  "UniversalDashboard" = (Get-Random -Minimum 10 -Maximum 10000) }
                $features += [PSCustomObject]@{ "OperatingSystem" = "Windows 7"; "FormsDesigner" = (Get-Random -Minimum 10 -Maximum 10000);  "WPFDesigner" = (Get-Random -Minimum 10 -Maximum 10000);  "UniversalDashboard" = (Get-Random -Minimum 10 -Maximum 10000) }
                $features += [PSCustomObject]@{ "OperatingSystem" = "Ubuntu 16.04"; "FormsDesigner" = (Get-Random -Minimum 10 -Maximum 10000);  "WPFDesigner" = (Get-Random -Minimum 10 -Maximum 10000);  "UniversalDashboard" = (Get-Random -Minimum 10 -Maximum 10000) }
                $features| Out-UDChartData -LabelProperty "OperatingSystem" -Dataset @(
                    New-UDChartDataset -DataProperty "FormsDesigner" -Label "Forms Designer" -BackgroundColor "#80962F23" -HoverBackgroundColor "#80962F23"
                    New-UDChartDataset -DataProperty "WPFDesigner" -Label "WPF Designer" -BackgroundColor "#8014558C" -HoverBackgroundColor "#8014558C"
                    New-UDChartDataset -DataProperty "UniversalDashboard" -Label "Universal Dashboard" -BackgroundColor "#803AE8CE" -HoverBackgroundColor "#803AE8CE"
                )
            }
        }
        New-UDColumn -Size 4 {
            New-UDChart -Title "Feature by operating system (Line)" -Type Line -AutoRefresh -RefreshInterval 7 @Colors -Endpoint {
                $features = @();
                $features += [PSCustomObject]@{ "OperatingSystem" = "Windows 10"; "FormsDesigner" = (Get-Random -Minimum 10 -Maximum 10000);  "WPFDesigner" = (Get-Random -Minimum 10 -Maximum 10000);  "UniversalDashboard" = (Get-Random -Minimum 10 -Maximum 10000) }
                $features += [PSCustomObject]@{ "OperatingSystem" = "Windows 8"; "FormsDesigner" = (Get-Random -Minimum 10 -Maximum 10000);  "WPFDesigner" = (Get-Random -Minimum 10 -Maximum 10000);  "UniversalDashboard" = (Get-Random -Minimum 10 -Maximum 10000) }
                $features += [PSCustomObject]@{ "OperatingSystem" = "Windows 7"; "FormsDesigner" = (Get-Random -Minimum 10 -Maximum 10000);  "WPFDesigner" = (Get-Random -Minimum 10 -Maximum 10000);  "UniversalDashboard" = (Get-Random -Minimum 10 -Maximum 10000) }
                $features += [PSCustomObject]@{ "OperatingSystem" = "Ubuntu 16.04"; "FormsDesigner" = (Get-Random -Minimum 10 -Maximum 10000);  "WPFDesigner" = (Get-Random -Minimum 10 -Maximum 10000);  "UniversalDashboard" = (Get-Random -Minimum 10 -Maximum 10000) }
                $features| Out-UDChartData -LabelProperty "OperatingSystem" -Dataset @(
                    New-UDChartDataset -DataProperty "FormsDesigner" -Label "Forms Designer" -BackgroundColor "#80962F23" -HoverBackgroundColor "#80962F23"
                    New-UDChartDataset -DataProperty "WPFDesigner" -Label "WPF Designer" -BackgroundColor "#8014558C" -HoverBackgroundColor "#8014558C"
                    New-UDChartDataset -DataProperty "UniversalDashboard" -Label "Universal Dashboard" -BackgroundColor "#803AE8CE" -HoverBackgroundColor "#803AE8CE"
                )
            }
        }
        New-UDColumn -Size 4 {
            New-UDChart -Title "Feature by operating system (Area)" -Type Area -AutoRefresh -RefreshInterval 7 @Colors -Endpoint {
                $features = @();
                $features += [PSCustomObject]@{ "OperatingSystem" = "Windows 10"; "FormsDesigner" = (Get-Random -Minimum 10 -Maximum 10000);  "WPFDesigner" = (Get-Random -Minimum 10 -Maximum 10000);  "UniversalDashboard" = (Get-Random -Minimum 10 -Maximum 10000) }
                $features += [PSCustomObject]@{ "OperatingSystem" = "Windows 8"; "FormsDesigner" = (Get-Random -Minimum 10 -Maximum 10000);  "WPFDesigner" = (Get-Random -Minimum 10 -Maximum 10000);  "UniversalDashboard" = (Get-Random -Minimum 10 -Maximum 10000) }
                $features += [PSCustomObject]@{ "OperatingSystem" = "Windows 7"; "FormsDesigner" = (Get-Random -Minimum 10 -Maximum 10000);  "WPFDesigner" = (Get-Random -Minimum 10 -Maximum 10000);  "UniversalDashboard" = (Get-Random -Minimum 10 -Maximum 10000) }
                $features += [PSCustomObject]@{ "OperatingSystem" = "Ubuntu 16.04"; "FormsDesigner" = (Get-Random -Minimum 10 -Maximum 10000);  "WPFDesigner" = (Get-Random -Minimum 10 -Maximum 10000);  "UniversalDashboard" = (Get-Random -Minimum 10 -Maximum 10000) }
                $features| Out-UDChartData -LabelProperty "OperatingSystem" -Dataset @(
                    New-UDChartDataset -DataProperty "FormsDesigner" -Label "Forms Designer" -BackgroundColor "#80962F23" -HoverBackgroundColor "#80962F23"
                    New-UDChartDataset -DataProperty "WPFDesigner" -Label "WPF Designer" -BackgroundColor "#8014558C" -HoverBackgroundColor "#8014558C"
                    New-UDChartDataset -DataProperty "UniversalDashboard" -Label "Universal Dashboard" -BackgroundColor "#803AE8CE" -HoverBackgroundColor "#803AE8CE"
                )
            }
        }
    }
    New-UDRow {
        New-UDColumn -Size 3 {
            New-UDCard @AlternateColors -Title "Monitors" -Text "Track data over time in simple charts. Output counts for items like processor usage, memory usage or event counts."
        }
        New-UDColumn -Size 9 {
            New-UDCard @ScriptColors -Language "powershell" -Text 'New-UDMonitor -Title "Visits per second" -Type Line -DataPointHistory 20 -RefreshInterval 20 -ChartBackgroundColor "#593479FF" -ChartBorderColor "#FF5479FF" -Endpoint {
    Get-Random -Minimum 0 -Maximum 10000 | Out-UDMonitorData
}' -Title "PowerShell"
        }

    }
    New-UDRow {
        New-UDColumn -Size 4 {
            New-UDMonitor -Title "Downloads per second" -Type Line -DataPointHistory 20 -RefreshInterval 5 -ChartBackgroundColor '#59FF681B' -ChartBorderColor '#FFFF681B' @Colors -Endpoint {
                Get-Random -Minimum 0 -Maximum 10 | Out-UDMonitorData
            }
        }
        New-UDColumn -Size 4 {
            New-UDMonitor -Title "Tweets per second" -Type Line -DataPointHistory 20 -RefreshInterval 20 -ChartBackgroundColor '#595479FF' -ChartBorderColor '#FF5479FF' @Colors -Endpoint {
                Get-Random -Minimum 0 -Maximum 10000 | Out-UDMonitorData
            }
        }
        New-UDColumn -Size 4 {
            New-UDMonitor -Title "Visits per second" -Type Line -DataPointHistory 20 -RefreshInterval 20 -ChartBackgroundColor '#591179FF' -ChartBorderColor '#FF1279FF' @Colors -Endpoint {
                Get-Random -Minimum 0 -Maximum 10000 | Out-UDMonitorData
            }
        }
    }
    New-UDRow {
        New-UDColumn -Size 3 {
            New-UDCard @AlternateColors -Title "Counters" -Text "Display simple counts. Format displayed numbers using Numeral.js."
        }
        New-UDColumn -Size 9 {
            New-UDCard @ScriptColors -Language "PowerShell Script for a Counter" -Text 'New-UDCounter -Title "Total Bytes Downloaded" -AutoRefresh -RefreshInterval 3 -Format "0.00b" -Icon cloud_download -Endpoint {
    Get-Random -Minimum 0 -Maximum 100000000 | ConvertTo-Json
} ' -Title "PowerShell"
        }
    }
    New-UDRow {
        New-UDColumn -Size 4 {
            New-UDCounter -Title "Total Bytes Downloaded" -AutoRefresh -RefreshInterval 3 -Format '0.00b' -Icon cloud_download @Colors -Endpoint {
                Get-Random -Minimum 0 -Maximum 100000000 | ConvertTo-Json
            }
        }
        New-UDColumn -Size 4 {
            New-UDCounter -Title "Total Bytes Uploaded" -AutoRefresh -RefreshInterval 3 -Format '0.00b' -Icon cloud_upload @Colors -Endpoint {
                Get-Random -Minimum 0 -Maximum 100000000 | ConvertTo-Json
            }
        }
        New-UDColumn -Size 4 {
            New-UDCounter -Title "Total Revenue" -AutoRefresh -RefreshInterval 3 -Format '$0,0.00' -Icon money @Colors -Endpoint {
                Get-Random -Minimum 0 -Maximum 100000000 | ConvertTo-Json
            }
        }
    }
    New-UDRow {
        New-UDColumn -Size 3 {
            New-UDCard @AlternateColors -Title "Grids" -Text "Display data in a table that supports client and server side paging."
        }
        New-UDColumn -Size 9 {
            New-UDCard @ScriptColors -Language "PowerShell" -Text 'New-UDGrid -Title "Customer Locations" -Headers @("Country", "Customers", "First Purchase Date") -Properties @("Country", "Customers", "FirstPurchaseDate") -AutoRefresh -RefreshInterval 20 -Endpoint {
                Invoke-RestMethod http://myserver/api/myendpoint | Out-UDGridData
} ' -Title "PowerShell"
        }
    }
    New-UDRow {
        New-UDColumn -Size 12 {
            New-UDGrid -Title "Customer Locations" @Colors -Headers @("Country", "Customers", "First Purchase Date") -Properties @("Country", "Customers", "FirstPurchaseDate") -AutoRefresh -RefreshInterval 20 -Endpoint {
                                     @(
                                            @{
                                                    Country = "MAURITANIA"
                                                    Customers = 262
                                                    FirstPurchaseDate = "5/30/2017"
                                                },
                                            @{
                                                    Country = "NAURU"
                                                    Customers = 649
                                                    FirstPurchaseDate = "9/11/2017"
                                                },
                                            @{
                                                    Country = "POLAND"
                                                    Customers = 92
                                                    FirstPurchaseDate = "8/8/2017"
                                                },
                                            @{
                                                    Country = "SWITZERLAND"
                                                    Customers = 830
                                                    FirstPurchaseDate = "5/8/2017"
                                                },
                                            @{
                                                    Country = "ISLE OF MAN"
                                                    Customers = 641
                                                    FirstPurchaseDate = "7/13/2017"
                                                },
                                            @{
                                                    Country = "KYRGYZSTAN"
                                                    Customers = 857
                                                    FirstPurchaseDate = "7/30/2017"
                                                },
                                            @{
                                                    Country = "GIBRALTAR"
                                                    Customers = 223
                                                    FirstPurchaseDate = "9/3/2017"
                                                },
                                            @{
                                                    Country = "BAHRAIN"
                                                    Customers = 912
                                                    FirstPurchaseDate = "9/10/2017"
                                                },
                                            @{
                                                    Country = "PAKISTAN"
                                                    Customers = 913
                                                    FirstPurchaseDate = "6/9/2017"
                                                },
                                            @{
                                                    Country = "MALAWI"
                                                    Customers = 281
                                                    FirstPurchaseDate = "6/14/2017"
                                                },
                                            @{
                                                    Country = "HONG KONG"
                                                    Customers = 255
                                                    FirstPurchaseDate = "8/19/2017"
                                                },
                                            @{
                                                    Country = "DOMINICA"
                                                    Customers = 80
                                                    FirstPurchaseDate = "8/3/2017"
                                                },
                                            @{
                                                    Country = "GHANA"
                                                    Customers = 275
                                                    FirstPurchaseDate = "4/15/2017"
                                                },
                                            @{
                                                    Country = "ISRAEL"
                                                    Customers = 380
                                                    FirstPurchaseDate = "5/11/2017"
                                                },
                                            @{
                                                    Country = "FRENCH POLYNESIA"
                                                    Customers = 155
                                                    FirstPurchaseDate = "4/20/2017"
                                                },
                                            @{
                                                    Country = "PANAMA"
                                                    Customers = 130
                                                    FirstPurchaseDate = "9/3/2017"
                                                },
                                            @{
                                                    Country = "ESTONIA"
                                                    Customers = 468
                                                    FirstPurchaseDate = "8/12/2017"
                                                },
                                            @{
                                                    Country = "BANGLADESH"
                                                    Customers = 794
                                                    FirstPurchaseDate = "7/29/2017"
                                                },
                                            @{
                                                    Country = "�LAND ISLANDS"
                                                    Customers = 989
                                                    FirstPurchaseDate = "8/20/2017"
                                                },
                                            @{
                                                    Country = "ANGOLA"
                                                    Customers = 377
                                                    FirstPurchaseDate = "4/22/2017"
                                                }

                                             )  | Out-UDGridData
                                }
        }
    }
    New-UDRow {
        New-UDColumn -Size 3 {
            New-UDCard @AlternateColors -Title "Tables" -Text "Display static table data. Refresh on a customizable interval."
        }
        New-UDColumn -Size 9 {
            New-UDCard @ScriptColors -Language "PowerShell" -Text 'New-UDTable -Title "Top GitHub Issues" -Headers @("Id", "Title", "Description", "Comments") -Endpoint {
    $issues = @();
    $issues += [PSCustomObject]@{ "ID" = (Get-Random -Minimum 10 -Maximum 10000); "Title" = "Product is too awesome..."; "Description" = "Universal Desktop is just too awesome."; Comments = (Get-Random -Minimum 10 -Maximum 10000) }
    $issues += [PSCustomObject]@{ "ID" = (Get-Random -Minimum 10 -Maximum 10000); "Title" = "Support for running on a PS4"; "Description" = "A dashboard on a PS4 would be pretty cool."; Comments = (Get-Random -Minimum 10 -Maximum 10000) }
    $issues += [PSCustomObject]@{ "ID" = (Get-Random -Minimum 10 -Maximum 10000); "Title" = "Bug in the flux capacitor"; "Description" = "The flux capacitor is constantly crashing."; Comments = (Get-Random -Minimum 10 -Maximum 10000) }
    $issues += [PSCustomObject]@{ "ID" = (Get-Random -Minimum 10 -Maximum 10000); "Title" = "Feature Request - Hypnotoad Widget"; "Description" = "Every dashboard needs more hypnotoad"; Comments = (Get-Random -Minimum 10 -Maximum 10000) }

    $issues | Out-UDTableData -Property @("ID", "Title", "Description", "Comments")
}' -Title "PowerShell"
        }

    }
    New-UDRow {
        New-UDColumn -Size 12 {
            New-UDTable -Title "Top GitHub Issues" -Headers @("Id", "Title", "Description", "Comments") @Colors -Endpoint {
                $issues = @();
                $issues += [PSCustomObject]@{ "ID" = (Get-Random -Minimum 10 -Maximum 10000);  "Title" = "Product is too awesome...";  "Description" = "Universal Desktop is just too awesome."; Comments = (Get-Random -Minimum 10 -Maximum 10000) }
                $issues += [PSCustomObject]@{ "ID" = (Get-Random -Minimum 10 -Maximum 10000);  "Title" = "Support for running on a PS4";  "Description" = "A dashboard on a PS4 would be pretty cool."; Comments = (Get-Random -Minimum 10 -Maximum 10000) }
                $issues += [PSCustomObject]@{ "ID" = (Get-Random -Minimum 10 -Maximum 10000);  "Title" = "Bug in the flux capacitor";  "Description" = "The flux capacitor is constantly crashing."; Comments = (Get-Random -Minimum 10 -Maximum 10000) }
                $issues += [PSCustomObject]@{ "ID" = (Get-Random -Minimum 10 -Maximum 10000);  "Title" = "Feature Request - Hypnotoad Widget";  "Description" = "Every dashboard needs more hypnotoad"; Comments = (Get-Random -Minimum 10 -Maximum 10000) }

                $issues | Out-UDTableData -Property @("ID", "Title", "Description", "Comments")
            }
        }
    }
    New-UDRow {
        New-UDColumn -Size 3 {
            New-UDCard @AlternateColors -Title "Images" -Text "Display images from the web or from disk. Refresh images on the fly and generate them from endpoints."
        }
        New-UDColumn -Size 9 {
            New-UDCard @ScriptColors -Language "PowerShell" -Text 'New-UDImage -Url https://poshtools.com/wp-content/uploads/2017/04/PoshToolsLogo-2.png -Height 100 -Width 100' -Title "PowerShell"
        }
    }
    New-UDRow {
        New-UDColumn -Size 3 {
            New-UDImage -Url https://poshtools.com/wp-content/uploads/2017/04/PoshToolsLogo-2.png -Height 75 -Width 300
        }
        New-UDColumn -Size 3 {
            New-UDImage -Url https://poshtools.com/wp-content/uploads/2017/04/PoshToolsLogo-2.png -Height 75 -Width 300
        }
        New-UDColumn -Size 3 {
            New-UDImage -Url https://poshtools.com/wp-content/uploads/2017/04/PoshToolsLogo-2.png -Height 75 -Width 300
        }
        New-UDColumn -Size 3 {
            New-UDImage -Url https://poshtools.com/wp-content/uploads/2017/04/PoshToolsLogo-2.png -Height 75 -Width 300
        }
    }
}

$Formatting = New-UDPage -Name "Formatting" -Icon th {


    New-UDRow {
        New-UDColumn -Size 3 {
            New-UDCard  @AlternateColors -Title "Grid System" -Text "Organize your dashboard using the Materialize grid system. Break down sections by rows and columns. Choose the size of each column. Nest rows and grids within each other for ultimate control." -Links @(New-UDLink -Url "http://materializecss.com/grid.html" -Text "Learn more about the grid system")
        }
        New-UDColumn -Size 9 {
            New-UDCard @ScriptColors -Language "PowerShell" -Text 'New-UDRow {
    New-UDColumn -Size 9 {
        New-UDRow {
            New-UDColumn -Size 3 {
                New-UDCard
            }
            New-UDColumn -Size 3 {
                New-UDCard
            }
            New-UDColumn -Size 6 {
                New-UDCard
            }
        }
    }
    New-UDColumn -Size 3 {
        New-UDCard
    }
}' -Title "PowerShell"
        }
    }

    New-UDRow {
        New-UDColumn -Size 9 {
            New-UDRow {
                New-UDColumn -Size 3 {
                    New-UDCard
                }
                New-UDColumn -Size 3 {
                    New-UDCard
                }
                New-UDColumn -Size 6 {
                    New-UDCard
                }
            }
        }
        New-UDColumn -Size 3 {
            New-UDCard
        }
    }

    New-UDRow {
        New-UDColumn -Size 3 {
            New-UDCard  @AlternateColors -Title "Layout" -Text "Create simple layouts by specifying the number of columns and adding content. Rows and columns will automatically be created."
        }
        New-UDColumn -Size 9 {
            New-UDCard @ScriptColors -Language "PowerShell" -Text 'New-UDLayout -Columns 3 -Content {
    New-UDCard
    New-UDCard
    New-UDCard
    New-UDCard
    New-UDCard
    New-UDCard
}' -Title "PowerShell"
        }
    }

    New-UDRow {
        New-UDColumn -Size 12 {
            New-UDLayout -Columns 3 -Content {
                New-UDCard
                New-UDCard
                New-UDCard
                New-UDCard
                New-UDCard
                New-UDCard
            }
        }
    }

    New-UDRow {
        New-UDColumn -Size 3 {
            New-UDCard  @AlternateColors -Title "Pages" -Text "Create multi-page dashboards. Provide icons and link text. Take advantage of ReactJS routing to provide custom URLs."
        }
        New-UDColumn -Size 9 {
            New-UDCard @ScriptColors -Language "PowerShell" -Text 'New-UDPage -Name Components -Icon area_chart -Content {
    New-UDChart {}
}' -Title "PowerShell"
        }
    }
    New-UDRow {
        New-UDColumn -Size 3 {
            New-UDCard  @AlternateColors -Title "Navigation Bar" -Text "Customize the navigation bar colors, text and links."
        }
        New-UDColumn -Size 9 {
            New-UDCard @ScriptColors -Language "PowerShell" -Text '$NavBarLinks = @((New-UDLink -Text "PowerShell Pro Tools" -Url "https://poshtools.com/buy-powershell-pro-tools/" -Icon heart_o),
(New-UDLink -Text "Documentation" -Url "https://adamdriscoll.gitbooks.io/powershell-tools-documentation/content/powershell-pro-tools-documentation/universal-dashboard.html" -Icon book))
New-UDDashboard -NavbarLinks $NavBarLinks -Title "PowerShell Universal Dashboard" -NavBarColor "#FF1c1c1c" -NavBarFontColor "#FF55b3ff" -BackgroundColor "#FF333333" -FontColor "#FFFFFFF" ' -Title "PowerShell"
        }
    }
}

$Input = New-UDPage -Name "Input" -Icon list -Content {
    New-UDRow {
        New-UDColumn -Size 3 {
            New-UDCard  @AlternateColors -Title "Input" -Text "Create input cards by specifying endpoints and processing data on the server. Return actions to the client after processing the data."
        }
        New-UDColumn -Size 9 {
            New-UDCard @ScriptColors -Language "PowerShell" -Text 'New-UDInput -Title "User Data" -Endpoint {
    param($Name, [bool]$Yes)

    if ($Yes) {
        New-UDInputAction -Toast "Yes, $Name"
    } else {
        New-UDInputAction -Toast "No, $Name"
    }
}' -Title "PowerShell"
        }
    }

    New-UDRow {
        New-UDColumn -Size 12 {
            New-UDInput @AlternateColors -Title "User Data" -Endpoint {
                param($Name, [bool]$Yes)

                if ($Yes) {
                    New-UDInputAction -Toast "Yes, $Name"
                } else {
                    New-UDInputAction -Toast "No, $Name"
                }
            }
        }
    }

    New-UDRow {
        New-UDColumn -Size 3 {
            New-UDCard  @AlternateColors -Title "Replace Input Controls" -Text "Create utilities by replacing the input control with another control."
        }
        New-UDColumn -Size 9 {
            New-UDCard @ScriptColors -Language "PowerShell" -Text 'New-UDInput -Title "Generate Guid" -Endpoint {
    param()
    New-UDInputAction -Content @(
        New-UDCard -Title "Your Guid" -Text ([Guid]::NewGuid())
    )
}' -Title "PowerShell"
        }
    }

    New-UDRow {
        New-UDColumn -Size 12 {
            New-UDInput @AlternateColors -Title "Generate Guid" -Endpoint {
                param()
                New-UDInputAction -Content @(
                    New-UDCard @AlternateColors -Title "Your Guid" -Text ([Guid]::NewGuid())
                )
            }
        }
    }

    New-UDRow {
        New-UDColumn -Size 3 {
            New-UDCard  @AlternateColors -Title "Dynamic Pages" -Text "Using inputs, you can redirect users to dynamic pages."
        }
        New-UDColumn -Size 9 {
            New-UDCard @ScriptColors -Language "PowerShell" -Text 'New-UDInput -Title "What is your name?" -Endpoint {
    param($Name)

    New-UDInputAction -RedirectUrl "/dynamic/$Name"
}' -Title "PowerShell"
        }
    }

    New-UDRow {
        New-UDColumn -Size 12 {
            New-UDInput @AlternateColors -Title "What is your name?" -Endpoint {
                param($Name)

                New-UDInputAction -RedirectUrl "/dynamic/$Name"
            }
        }
    }
}

$DynamicPages = New-UDPage -Name "Dynamic Pages" -Icon code -Content {
    New-UDRow {
        New-UDColumn -Size 3 {
            New-UDCard  @AlternateColors -Title "URLs with variables" -Text "Create URLs with replacement variables that you can then use in your dynamic page to generate the content on the fly"
        }
        New-UDColumn -Size 9 {
            New-UDCard @ScriptColors -Language "PowerShell" -Text 'New-UDInput -Title "Do you like PowerShell?" -Endpoint {
    param([bool]$Yes)
    New-UDInputAction -RedirectUrl "/quiz/$Yes"
}

$Quiz = New-UDPage -Url "/quiz/:answer" -Endpoint {
    param($answer)

    if ($answer -eq "true") {
        New-UDCard -Title "Results" -Content "Wooooooo!"
    } else {
        New-UDCard -Title "Results" -Content "Bummer :("
    }
}' -Title "PowerShell"
        }
    }

    New-UDRow {
        New-UDColumn -Size 12 {
            New-UDInput @AlternateColors -Title "Do you like PowerShell?" -Endpoint {
                param([bool]$Yes)
                New-UDInputAction -RedirectUrl "/quiz/$Yes"
            }
        }
    }
}

$Dynamic = New-UDPage -Url "/dynamic/:name" -Endpoint {
    param($name)

    $ScriptColors = @{
        BackgroundColor = "#5A5A5A"
        FontColor = "#FFFFFF"
    }

    New-UDCard @ScriptColors -Title "Welcome to a dynamic page, $name!" -Text "This is a dynamic page. The content of the page is determined by the URL."
}

$Quiz = New-UDPage -Url "/quiz/:answer" -Endpoint {
    param($answer)


    $ScriptColors = @{
        BackgroundColor = "#5A5A5A"
        FontColor = "#FFFFFF"
    }

    if ($answer -eq "true") {
        New-UDCard @ScriptColors -Title "Results" -Text "Wooooooo!"
    } else {
        New-UDCard @ScriptColors -Title "Results" -Text "Bummer :("
    }
}

$HomePage = New-UDPage -Name "Home" -Icon home -Content {
    New-UDRow {
        New-UDColumn -Size 12 {
            New-UDHtml -Markup "<div class='center-align white-text'><h3>Welcome to Universal Dashboard</h3></h3><h5>You are now running Universal Dashboard. You can begin creating dashboards using a domain specific language built on PowerShell and for the web. Visit the documentation and check out the different components.</h5></div>"
        }
    }
    New-UDRow {
        New-UDColumn -Size 6 {
            New-UDCard @Colors -Title "Need help?" -Text "Join us on Gitter chat or post an issue to GitHub. Make sure to check out the documentaton." -Links @(
                    New-UDLink -Text "Gitter" -Url "https://gitter.im/ironmansoftware"
                    New-UDLink -Text "GitHub" -Url "https://github.com/adamdriscoll/poshprotools"
                    New-UDLink -Text "Documentation" -Url "https://adamdriscoll.gitbooks.io/powershell-universal-dashboard/content/"
                )
            New-UDCard @Colors -Title "Looking to buy a license?" -Text "Visit Poshtools.com to purchase a license. Universal Dashboard is resonably priced and we offer site licenses for large deployments." -Links @(
                New-UDLink -Text "Buy a license" -Url "https://poshtools.com/buy-powershell-pro-tools/universal-dashboard/"
            )
        }
        New-UDColumn -Size 6 {
            New-UDTable @Colors -Title "What's new?" -Headers @("Article", "Date", "Link") -Endpoint {
                Invoke-RestMethod https://poshtools.com/feed/ | Select-Object -First 5 | ForEach-Object {
                    [PSCustomObject]@{
                        "Article" = $_.Title
                        "Date" = $_.pubDate
                        "Link" = New-UDLink -Text "View Post" -Url $_.link
                    }
                } | Out-UDTableData -Property @("Article", "Date", "Link")
            }
        }
    }
    New-UDRow {
        New-UDColumn -Size 6 {
            New-UDGrid -Title "Popular Dashboards" -Headers @("Name", "Description", "Downloads", "PowerShell Gallery") -Properties @("Name", "Description", "Downloads", "Link") @Colors -Endpoint {
                try {
                    Find-Script -Tag "UniversalDashboard" | ForEach-Object {
                        [PSCustomObject] @{
                            Name = $_.Name
                            Description = $_.Description
                            Downloads = $_.AdditionalMetadata.downloadCount
                            Link = New-UDLink -Text "PowerShell Gallery" -Url "https://www.powershellgallery.com/packages/$($_.Name)"
                        }
                    } | Sort-Object -Descending -Property "Downloads"| Out-UDGridData
                }
                catch {

                }
            }
        }
        New-UDColumn -Size 6 {
            New-UDRow {
                New-UDColumn -Size 12 {
                    New-UDChart -Title "Popular Dashboards" -Type Bar @Colors -Endpoint {
                        try {
                            Find-Script -Tag "UniversalDashboard" | ForEach-Object {
                                [PSCustomObject] @{
                                    Name = $_.Name
                                    Description = $_.Description
                                    Downloads = $_.AdditionalMetadata.downloadCount
                                    Link = New-UDLink -Text "PowerShell Gallery" -Url "https://www.powershellgallery.com/packages/$($_.Name)"
                                }
                            } | Sort-Object -Descending -Property "Downloads" | Select-Object -First 10 | Out-UDChartData -DataProperty "Downloads" -LabelProperty "Name" -BackgroundColor @("#80FF0000", "#80202BFF", "#8029FF79", "#806DFF23", "#80FFD62B") -BorderColor @("#FFFF0000", "#FF202BFF", "#FF29FF79", "#FF6DFF23", "#FFFFD62B")
                        }
                        catch {

                        }
                    }
                }
            }
        }
    }
}


New-UDDashboard -NavbarLinks $NavBarLinks `
    -Title "PowerShell Universal Dashboard" `
    -NavBarColor '#FF1c1c1c' `
    -NavBarFontColor "#FF55b3ff" `
    -BackgroundColor "#FF333333" `
    -FontColor "#FFFFFFF" `
    -Pages @(
        $HomePage,
        $Components,
        $Formatting,
        $Input,
        $DynamicPages,
        $Dynamic,
        $Quiz
)
