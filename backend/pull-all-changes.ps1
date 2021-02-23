$PostServicePath = 'flilia.services.post'
$SharedServicePath = 'flilia.services.shared'
$AccountServicePath = 'flilia.services.identity'
$ProfileServicePath = 'flilia.services.profile'
$StorageServicePath = 'flilia.services.storage'
$NetworkServicePath = 'flilia.services.network'
$NotificationServicePath = 'flilia.services.notification'

if (Test-Path $PostServicePath)
{
    Set-Location $PostServicePath
    git pull
    Set-Location ..
}

if (Test-Path $SharedServicePath)
{
    Set-Location $SharedServicePath
    git pull
    Set-Location ..
}

if (Test-Path $AccountServicePath)
{
    Set-Location $AccountServicePath
    git pull
    Set-Location ..
}

if (Test-Path $ProfileServicePath)
{
    Set-Location $ProfileServicePath
    git pull
    Set-Location ..
}

if (Test-Path $StorageServicePath)
{
    Set-Location $StorageServicePath
    git pull
    Set-Location ..
}

if (Test-Path $NetworkServicePath)
{
    Set-Location $NetworkServicePath
    git pull
    Set-Location ..
}

if (Test-Path $NotificationServicePath)
{
    Set-Location $NotificationServicePath
    git pull
    Set-Location ..
}
