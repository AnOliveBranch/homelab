#!/bin/bash
# Query the local Technitium instance directly, not the VIP
dig +time=2 +tries=1 +short @127.0.0.1 google.com A >/dev/null 2>&1
