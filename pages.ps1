
. $PSScriptRoot\components.ps1

$filesPage = New-UDPage `
    -Name "FileInfo" `
    -Endpoint {
        param($filePath)
        New-UDCard -Title "Page $filePath!!" -Id "PageCard"
        Get-FileSearchComponent
    }

$filesApiPage = New-UDPage `
    -Url "/file/:filePath" `
    -Endpoint {
        param($filePath)
        New-UDCard -Title "Page $filePath!!" -Id "PageCard"
    }

$serverPage = New-UDPage `
    -Url "/server/:servername" `
    -Endpoint {
        param($serverName)
        New-UDCard -Title "Page $serverName!!" -Id "PageCard"
        Get-ServerInformationComponent $env:COMPUTERNAME
        Get-ServerInformationComponent $serverName
    }

$localPage = New-UDPage `
    -Name "Local Host Data" `
    -Content {
        Get-ServerInformationComponent $env:COMPUTERNAME
    }

$randomPage = New-UDPage -Name "Random" `
    -Icon home `
    -Content {
        10,20,100 |
            Get-RandomMonitor
    }

$homePage = New-UDPage -Name "Home" `
    -Icon home `
    -Content {
        $ServerInformationComponent
    }

$linksPage = New-UDPage -Name "Links" `
    -Icon link `
    -Content {
        Get-ServerDetailComponent
        # New-UDInput -Title "Find module version" -Endpoint {
        #     param($ModuleName)

        #     # Get a module from the gallery
        #     $Module = Find-Module $ModuleName

        #     # New-UDInputAction -RedirectUrl $Module.ProjectUri
        # }
    }

$testPage = New-UDPage -Url "/myPage/:number/:number2" `
    -Endpoint {
        param($number, $number2)
        New-UDCard -Title "Page $number : $number2." -Id "PageCard"
    }
