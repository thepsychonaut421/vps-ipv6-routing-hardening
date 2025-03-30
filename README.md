# VPS IPv6 Routing Hardening

This project documents how to properly configure a VPS with:
- Controlled IPv6 behavior (without breaking VPNs or tunnels)
- Clean IPv4 prioritization
- Full deactivation of `cloud-init` (if desired)

## Structure

- `scripts/fix-ipv6-ra.sh`: Applies all relevant sysctl IPv6 fixes
- `systemd/fix-ipv6-ra.service`: Systemd unit to run the script at boot
- `sysctl/99-ipv6-restrict.conf`: Persistent sysctl settings
- `cloud-init/99-disable-network-config.cfg`: Prevents cloud-init from modifying network (optional)
- `docs/ipv6-routing.md`: Full step-by-step documentation

Tested on Debian 12 (cloud kernel).
