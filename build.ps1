$ErrorActionPreference = 'Stop';
Write-Host "Starting build"

docker build -t $env:USER/rakudo:daily -t $env:USER/rakudo:latest daily

docker build -t $env:USER/rakudo:$env:RAKU_VERSION $env:RAKU_VERSION

Write-Host "Finished build"