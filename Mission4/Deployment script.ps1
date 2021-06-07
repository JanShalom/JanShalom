$RG = Read-Host -Prompt 'Please Enter the Resource Group Name'
$Location = "West Europe"
$StorageTemplateFile = Read-Host -Prompt 'Please provide the path to the Storages template file'
$VMTemplateFile = Read-Host -Prompt 'Please provide the path to the VM template file'
#we can upload the file trought the pordal as well as deply the templets trough the portal

New-AzResourceGroup `
  -Name $RG `
  -Location $Location 

## optional running in the portal CS##

# Deploy 2 Storage accounts"
New-AzResourceGroupDeployment `
  -ResourceGroupName $RG `
  -TemplateFile $StorageTemplateFile

# Deploy 1 Windows VM"

New-AzResourceGroupDeployment `
-ResourceGroupName $RG `
-TemplateFile $VMTemplateFile
