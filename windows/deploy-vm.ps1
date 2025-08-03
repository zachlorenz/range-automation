# deploy-vm.ps1 - Creates a new Windows VM using Hyper-V

param (
    [string]$VMName = "WinLab01",
    [string]$VHDPath = "C:\VMs\BaseImage.vhdx",
    [string]$SwitchName = "Default Switch"
)

New-VM -Name $VMName -MemoryStartupBytes 2GB -VHDPath $VHDPath -Generation 2 -SwitchName $SwitchName
Set-VMProcessor -VMName $VMName -Count 2
Start-VM -Name $VMName

Write-Host "[$VMName] deployment complete." -ForegroundColor Green
