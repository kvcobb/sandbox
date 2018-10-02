# Title: SetNetVer.ps1
# Purpose: This script is used to detect the version dotnet in use and set variables accordingly

$path1 = $(build.sourcesdirectory)\Medumo\Medumo.PatientDispositioner\bin\$(BuildConfiguration)

if (Test-Path $path1\netstandard2.0\) {
  Write-host "netstandard2.0 detected"
  "##vso[task.setvariable variable=netVer;]netstandard2.o"
} elseif (Test-Path $path1\net461\) {
  Write-host "net461 detected"
  "##vso[task.setvariable variable=netVer;]net461"
} else {
  Write-host "Dotnet version was not detected!"
  exit
}
