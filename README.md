# Cyber Range Automation

This repository contains scripts and templates to automate the deployment and reset of a cyber training lab environment. Designed for red/blue team scenarios, it allows instructors, engineers, and cyber trainees to quickly stand up and tear down environments.

## Features

- Deploy Windows VMs via PowerShell (Hyper-V)
- Deploy Linux VMs via Bash (KVM/libvirt)
- Snapshot and reset range state
- Basic Ansible network scenario included

## Structure

- `windows/` - PowerShell scripts for Hyper-V lab automation
- `linux/` - Bash scripts for KVM/QEMU automation
- `ansible/` - Sample YAML for multi-host labs
- `config/` - Topology notes, installed tools, snapshot checklist

## Getting Started

```bash
# Deploy a Linux VM
cd linux/
chmod +x deploy-lab.sh
./deploy-lab.sh
