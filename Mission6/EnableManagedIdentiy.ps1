#$vm = Get-AzVM -ResourceGroupName $RG -Name Jan-VM1
#Update-AzVM -ResourceGroupName $RG -VM $vm -IdentityType SystemAssigned #works

$VM = Read-Host -Prompt 'Please provide the VM name'
$VMName = Get-AzVM -ResourceGroupName $RG -Name $VM

Update-AzVM -ResourceGroupName $RG -VM $VMName -IdentityType SystemAssigned

$miID = (Get-AzVM -ResourceGroupName $RG -Name $VM).identity.principalid # managed identities ID
$subID =  (Get-AzSubscription -SubscriptionName jan-azure1).id # Subscription ID

New-AzRoleAssignment -ObjectId $miID -RoleDefinitionName "Storage Blob Data Contributor" -Scope "/subscriptions/$subID/resourceGroups/$RG/providers/Microsoft.Storage/storageAccounts/$StorageA"
