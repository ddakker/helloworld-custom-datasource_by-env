#!/bin/bash
injected_dir=$1

pwd >> /tmp/log.log
echo ${injected_dir} >> /tmp/log.log

source /usr/local/s2i/install-common.sh
install_modules ${injected_dir}/modules
configure_drivers ${injected_dir}/drivers.env
