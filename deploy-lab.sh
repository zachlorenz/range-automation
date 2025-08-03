#!/bin/bash
# deploy-lab.sh - Automates KVM Linux VM deployment

VM_NAME="linux-lab1"
ISO_PATH="/var/lib/libvirt/images/ubuntu.iso"
DISK_PATH="/var/lib/libvirt/images/${VM_NAME}.qcow2"

echo "[+] Creating disk image..."
qemu-img create -f qcow2 $DISK_PATH 20G

echo "[+] Launching VM install..."
virt-install \
  --name $VM_NAME \
  --ram 2048 \
  --disk path=$DISK_PATH,format=qcow2 \
  --vcpus 2 \
  --os-type linux \
  --os-variant ubuntu20.04 \
  --cdrom $ISO_PATH \
  --network network=default \
  --graphics vnc,listen=0.0.0.0 \
  --noautoconsole
