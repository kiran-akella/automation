#!/usr/bin/bash
read -rp "Enter your Package name:" pkgName
command -v ${pkgName} >/dev/null 2>/dev/null && echo "Your ${pkgName} is present and it's path is $(command -v ${pkgName})" || echo "${pkgName} package is not  found"
