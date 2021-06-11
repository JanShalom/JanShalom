Invoke-WebRequest -Uri "https://aka.ms/downloadazcopy-v10-windows" -OutFile AzCopy.zip -UseBasicParsing
 
curl.exe -L -o AzCopy.zip https://aka.ms/downloadazcopy-v10-windows
 

Expand-Archive ./AzCopy.zip ./AzCopy -Force
New-Item -Path "c:\" -Name "AzCopy" -ItemType "directory"
 

Get-ChildItem ./AzCopy/*/azcopy.exe | Move-Item -Destination "C:\AzCopy\AzCopy.exe"

cd C:\AzCopy\
.\azcopy.exe login --identity
.\azcopy.exe cp "https://jan2msstorage1.blob.core.windows.net/ms-challenge" "c:\" --recursive

 