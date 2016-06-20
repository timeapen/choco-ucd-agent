# This script requires Chocolatey to be installed

function Download-Flyway-CLI {

  $url = "https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/4.0.3/flyway-commandline-4.0.3-windows-x64.zip"
  $output = "flyway-commandline-4.0.3-windows-x64.zip"
  $start_time = Get-Date

  (New-Object System.Net.WebClient).DownloadFile($url, $output)

  Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"

}

Download-Flyway-CLI

cinst jre8 -y
cinst cloudfoundry-cli -y
