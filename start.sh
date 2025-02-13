#!/usr/bin/env bash
#

function config_installer() {
  ./pam.sh install
  ./pam.sh start
}

function main(){
  if [[ "${OS}" == 'Darwin' ]]; then
    echo
    echo "Unsupported Operating System Error"
    exit 1
  fi
  config_installer
}

main
