param (
    [string]$VMXPath = "C:\VMs\WinLab01\WinLab01.vmx"
)

$vmrunPath = "${env:ProgramFiles(x86)}\VMware\VMware Workstation\vmrun.exe"

if (-Not (Test-Path $vmrunPath)) {
    Write-Error "vmrun not found. Is VMware Workstation installed?"
    exit
}

if (-Not (Test-Path $VMXPath)) {
    Write-Error "VMX file not found: $VMXPath"
    exit
}

& "$vmrunPath" start $VMXPath nogui
Write-Host "Started VM: $VMXPath"
