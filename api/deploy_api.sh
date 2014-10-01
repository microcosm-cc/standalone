#!/bin/bash
set -e
cp $1 microcosm
scp microcosm deployment@dev.microco.sm:~
ssh deployment@dev.microco.sm 'sudo chown root:root microcosm'
ssh deployment@dev.microco.sm 'sudo service microcosm stop || true'
ssh deployment@dev.microco.sm 'sudo mv microcosm /usr/sbin/'
ssh deployment@dev.microco.sm 'sudo service microcosm start'
