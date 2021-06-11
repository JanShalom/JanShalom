#$vm = Get-AzVM -ResourceGroupName $RG -Name Jan-VM1
#Update-AzVM -ResourceGroupName $RG -VM $vm -IdentityType SystemAssigned #works

$VMName = (Get-AzVm).name
Update-AzVM -ResourceGroupName $RG -VM $VMName -IdentityType SystemAssigned

$spID = (Get-AzVM -ResourceGroupName $RG -Name $VMName).identity.principalid
# New-AzRoleAssignment -ObjectId $spID -RoleDefinitionName "Storage Blob Data Contributor" -Scope "/subscriptions/563641ea-4294-4002-aedc-b0a97aa107fe/resourceGroups/$RG/providers/Microsoft.Storage/storageAccounts/$StorageA"

New-AzRoleAssignment -ObjectId $spID -RoleDefinitionName "Storage Blob Data Contributor" -Scope "/subscriptions/$subid/resourceGroups/$RG/providers/Microsoft.Storage/storageAccounts/$StorageA"

