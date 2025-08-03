#!/bin/bash
# range-reset.sh - Resets VMs to snapshot state

echo "[+] Resetting VMs..."
for vm in $(virsh list --name); do
    echo "[-] Reverting $vm..."
    virsh snapshot-revert $vm baseline
done

echo "[✓] All VMs reset to baseline snapshot."
