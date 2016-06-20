# This script requires Chocolatey to be installed

function Download-Flyway-CLI {

  $url = "https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/4.0.3/flyway-commandline-4.0.3-windows-x64.zip"
  $output = "flyway-commandline-4.0.3-windows-x64.zip"
  $start_time = Get-Date

  Write-Output "Starting to download flyway cli zip from: $url"

  (New-Object System.Net.WebClient).DownloadFile($url, $output)

  Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"

}

function Choco-Install-JRE {

  Write-Output "Choclatey installing JRE8"
  cinst jre8 -y
  
}

function Choco-Install-CloudFoundry-CLI {

  Write-Output "Choclatey install of CloudFoundry CLI"  
  cinst cloudfoundry-cli -y

}

Download-Flyway-CLI

Choco-Install-JRE

Choco-Install-CloudFoundry-CLI
