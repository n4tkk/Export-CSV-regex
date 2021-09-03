$ModuleName = "export-csv-regex"
$ModuleFileName = $ModuleName + ".psm1"
$ModuleParentPath = Join-Path (Split-Path $PROFILE -Parent) "Modules"
$ModulePath = Join-Path $ModuleParentPath $ModuleName

Remove-Item -Recurse -Force $ModulePath