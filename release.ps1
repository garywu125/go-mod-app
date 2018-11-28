# release differnet platform execution file
# 處理步驟:
# tag via git :
#   add tag : commit all/add tag name/sync remote repository
#   check out tag: git checkout <tag-name>
# build on shell:
#   switch to powershell
#   batch process: PowerShell.exe -Command "./release.ps1" <tag-name>

$Env:GOOS = "linux"; $Env:GOARCH = "amd64";go build -o ../release/test1/v0.1.1/test1_linux_amd64
$Env:GOOS = "windows"; $Env:GOARCH = "amd64";go build -o ../release/test1/v0.1.1/test1_windows_amd64.exe