#run from cloud shell
#Invoke-AzVMRunCommand -ResourceGroupName ms-jan  -Name Jan-VM1 -CommandId 'RunPowerShellScript' -ScriptPath ./copy-blob-to-vm.ps1

#Run from Local PC
Invoke-AzVMRunCommand -ResourceGroupName ms-jan  -Name Jan-VM1 -CommandId 'RunPowerShellScript' -ScriptPath .\Mission6\invoke-copy-blob-to-vm.ps1


