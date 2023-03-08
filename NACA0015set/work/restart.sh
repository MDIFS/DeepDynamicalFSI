#!/bin/bash
set -eu
pwdir=$(pwd)
echo 'from which directory? e.g., flow-local'
read tardir
if [ ! -d $tardir ];then
    mkdir $tardir
    mv flow_* $tardir/
else
    echo 'directory exists'
    exit
fi
ln -sf ${tardir}/flow_z01 ./restart.01
ln -sf ${tardir}/flow_old_z01 ./restart_old.01
