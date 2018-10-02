
#C:\agent\_work\1\s\Medumo\Medumo.PatientDispositioner\bin\Release\netstandard2.0\
#$(build.sourcesdirectory)\Medumo\Medumo.PatientDispositioner\bin\$(BuildConfiguration)\netstandard2.0\

if (Test-Path C:\agent\_work\1\s\Medumo\Medumo.PatientDispositioner\bin\Release\netstandard2.0\) {
  Write-host "netstandard2.0 detected"
  "##vso[task.setvariable variable=netVer;]netstandard2.o"
} elseif (Test-Path C:\agent\_work\1\s\Medumo\Medumo.PatientDispositioner\bin\Release\net461\) {
  Write-host "net461 detected"
  "##vso[task.setvariable variable=netVer;]net461"
} else {
  Write-host "Dotnet version was not detected!"
  exit
}
