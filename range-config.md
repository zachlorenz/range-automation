# Cyber Range Configuration

## Components
- Windows 10 VM (Simulated victim)
- Kali Linux VM (Red team attacker)
- Ubuntu Server (Syslog collector / SIEM)
- pfSense router (network segmentation)

## Snapshot Strategy
- Create "baseline" snapshot post-config
- Reset with `range-reset.sh`

## Tools Installed
- Zeek
- Splunk Universal Forwarder
- Suricata
- Nmap, Netcat, Metasploit
