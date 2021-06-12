#run from cloud shell
Invoke-AzVMRunCommand -ResourceGroupName ms-jan  -Name Jan-VM1 -CommandId 'RunPowerShellScript' -ScriptPath ./copy-blob-to-vm.ps1

