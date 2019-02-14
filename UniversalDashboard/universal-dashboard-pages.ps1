. $PSScriptRoot/pages.ps1
. $PSScriptRoot/endpoints.ps1
. $PSScriptRoot/components.ps1

Start-UDDashboard -Endpoint @(
        $EveryHour, $ModuleCount, $CachedModuleCount,
        $report
    )`
    -Dashboard (
        New-UDDashboard `
            -Pages @(
                $randomPage, $homePage, $filesPage,
                $serverPage, $testPage,
                $linksPage, $localPage
            )`
            -EndpointInitialization (New-UDEndpointInitialization -Function @(
                "Get-ServerData", "Get-ServerInformationComponent",
                "Get-ServerDetailComponent","Get-FileSearchComponent",
                "Get-ServerFileInformationComponent")
            )
            # -EndpointInitialization $ServerInformationComponent
    )
