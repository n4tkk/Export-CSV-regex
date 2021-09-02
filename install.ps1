$ModuleName = "export-csv-regex"
$ModuleFileName = $ModuleName + ".psm1"
$ModuleParentPath = Join-Path (Split-Path $PROFILE -Parent) "Modules"
$ModulePath = Join-Path $ModuleParentPath $ModuleName

New-Item -ItemType "directory" -Force -Path $ModulePath
Copy-Item -Force (Join-Path $PSScriptRoot $ModuleFileName) $ModulePath
