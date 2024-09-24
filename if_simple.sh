#!/usr/bin/bash
pkgname="${1}"
userId=$(id -u)
if [[ ${userId} -ne 0 ]] ; then 
    echo "You are not the root user. Please run this script from root"
    exit 2
fi 
if command -v $pkgname 1>/dev/null 2>/dev/null; then
    echo -e "$pkgname package already exists in $(command -v $pkgname)\nCurrent $pkgname Package Version is $(podman -v | awk '{print $3}')"
else
    echo "installing $pkgname package"
    yum install -y $pkgname && echo -e "$pkgname package installed successfully in $(command -v $pkgname)"    
fi