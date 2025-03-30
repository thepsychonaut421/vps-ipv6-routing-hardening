#!/bin/bash

sysctl -w net.ipv6.conf.all.accept_ra=0
sysctl -w net.ipv6.conf.default.accept_ra=0
sysctl -w net.ipv6.conf.all.autoconf=0
sysctl -w net.ipv6.conf.default.autoconf=0
sysctl -w net.ipv6.conf.all.router_solicitations=0
sysctl -w net.ipv6.conf.default.router_solicitations=0
