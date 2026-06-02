#
# This file will be sourced (included) by launch-vm.sh
#

declare -A network_config_key

network_config_key["almalinux10"]="eth0"
network_config_key["alpinelinux3.23"]="alpinelinux"
network_config_key["debian12"]="enp1s0"
network_config_key["debian13"]="enp1s0"
network_config_key["fedora44"]="enp1s0"
network_config_key["opensuse-leap16"]="eth0"
network_config_key["oraclelinux10"]="eth0"
network_config_key["rockylinux10"]="ens3"
network_config_key["ubuntu24.04"]="enp1s0"
network_config_key["ubuntu26.04"]="enp1s0"