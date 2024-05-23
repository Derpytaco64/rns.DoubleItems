# Set Working Directory
Split-Path $MyInvocation.MyCommand.Path | Push-Location
[Environment]::CurrentDirectory = $PWD

Remove-Item "$env:RELOADEDIIMODS/rns.DoubleItems/*" -Force -Recurse
dotnet publish "./rns.DoubleItems.csproj" -c Release -o "$env:RELOADEDIIMODS/rns.DoubleItems" /p:OutputPath="./bin/Release" /p:ReloadedILLink="true"

# Restore Working Directory
Pop-Location