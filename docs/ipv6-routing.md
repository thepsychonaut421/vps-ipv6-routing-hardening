# IPv6 Routing & Network Cleanup on VPS

## Goals:
- Stop unwanted IPv6 autoconfiguration
- Ensure IPv4 routing takes priority
- Fully neutralize cloud-init if needed

## Steps:
1. Copy `scripts/fix-ipv6-ra.sh` to `/usr/local/bin/` and make it executable
2. Copy `systemd/fix-ipv6-ra.service` to `/etc/systemd/system/` and enable it:
   ```bash
   systemctl daemon-reload
   systemctl enable fix-ipv6-ra.service
   systemctl start fix-ipv6-ra.service
   ```
3. Copy `sysctl/99-ipv6-restrict.conf` to `/etc/sysctl.d/` and run:
   ```bash
   sysctl --system
   ```
4. (Optional) To prevent cloud-init from modifying the network:
   ```bash
   mkdir -p /etc/cloud/cloud.cfg.d
   cp cloud-init/99-disable-network-config.cfg /etc/cloud/cloud.cfg.d/
   ```

