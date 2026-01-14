#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.krypteonxcore/krypteonxd.pid file instead
krypteonx_pid=$(<~/.krypteonxcore/testnet3/krypteonxd.pid)
sudo gdb -batch -ex "source debug.gdb" krypteonxd ${krypteonx_pid}
