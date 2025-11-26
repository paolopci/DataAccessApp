param(
  [string]$SecretPath = "C:\Users\Paolo\AppData\Roaming\Microsoft\UserSecrets\3f2dbf6c-1853-4db6-8ae8-dd3f90cd4079\secrets.json"
)

if (-not (Test-Path $SecretPath)) {
  Write-Error "File secret non trovato: $SecretPath"
  exit 1
}

$secret = Get-Content $SecretPath | ConvertFrom-Json

$env:SQLSERVER_HOST = $secret.SqlServer.Host
$env:SQLSERVER_PORT = $secret.SqlServer.Port
$env:SQLSERVER_USER = $secret.SqlServer.User
$env:SQLSERVER_PASSWORD = $secret.SqlServer.Password
$env:SQLSERVER_DB = $secret.SqlServer.Database

Write-Host "Variabili SQLSERVER_* impostate per Codex CLI."
