#!/usr/bin/env pwsh
$basedir=Split-Path $MyInvocation.MyCommand.Definition -Parent

$exe=""
if ($PSVersionTable.PSVersion -lt "6.0" -or $IsWindows) {
  # Fix case when both the Windows and Linux builds of Node
  # are installed in the same directory
  $exe=".exe"
}
# Support pipeline input
if ($MyInvocation.ExpectingInput) {
  $input | & "C:/Users/asti/AppData/Roaming/xPacks/@xpack-dev-tools/openocd/0.11.0-5.1/.content/bin/openocd.exe"   $args
} else {
  & "C:/Users/asti/AppData/Roaming/xPacks/@xpack-dev-tools/openocd/0.11.0-5.1/.content/bin/openocd.exe"   $args
}
exit $LASTEXITCODE
