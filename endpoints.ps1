
#Initialize caches And clean every hour
$Schedule = New-UDEndpointSchedule -Every 1 -Hour
$EveryHour = New-UDEndpoint -Schedule $Schedule -Endpoint {
    $Cache:ModuleCount = (Get-Module -ListAvailable).Count
    $Cache:fileReport = @{}
}

#Test endpoint
$moduleCount = New-UDEndpoint -Url "/moduleCount" -Endpoint {
    (Get-Module -ListAvailable).Count
}

# Get report for files
$report = New-UDEndpoint -Url "/fileReport/:id" -Endpoint {
    param($id)
    if([bool]$Cache:fileReport[$id]){
        return $cache:fileReport[$id]
    }
    $cache:fileReport[$id] = Get-ChildItem -Path $id |
        ForEach-Object{@{
            FullName = $_.FullName
            Name = $_.Name
            # OGItem = $_
        }
    }
    $cache:fileReport[$id]
}

$CachedModuleCount = New-UDEndpoint -Url "/cached-moduleCount" -Endpoint {
    $Cache:ModuleCount
}
