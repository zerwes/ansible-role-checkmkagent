![stand with Ukraine](https://badgen.net/badge/support/UKRAINE/?color=0057B8&labelColor=FFD700)
[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](http://www.gnu.org/licenses/gpl-3.0)
[![ansible-lint](https://github.com/zerwes/ansible-role-checkmkagent/actions/workflows/lint.yml/badge.svg)](https://github.com/zerwes/ansible-role-checkmkagent/actions?query=workflow%3Aansible-lint)
[![molecule test](https://github.com/zerwes/ansible-role-checkmkagent/actions/workflows/molecule.yml/badge.svg)](https://github.com/zerwes/ansible-role-checkmkagent/actions/workflows/molecule.yml)

# ansible-role-checkmkagent

[ansible](https://www.ansible.com) role to install/configure [checkmk agent](https://checkmk.com/) on debian

## role variables

[defaults/main.yml](defaults/main.yml)

## requirements

a [checkmk server](https://checkmk.com/) reachable from the machine running ansible

## bonus

In the role we have included some (partialy debian specific) check plugins (`check_mk_local_plugins`):
  * `check_apt-update-success` : check if the last apt update process was successful and not too long ago
  * `check_reboot` : check if a reboot is required after a apt update
  * `check_keepalived` : check the status of keepalive (global an per vrrp instance)
  * `check_samba_repl`: check samba DC replication status
  * `check_fail2ban` : check the status of fail2ban jails (using `fail2ban-client`)

## example configuration

```yml
# hostname of the checkmk server
checkmk_hostname: "cmk.example.domain"
checkmk_proto: https
checkmk_path: "SITE/check_mk/agents"
# IP of the checkmk server
checkmk_ip: "192.168.0.10"
# we prefere good old xinetd
check_mk_agent_use_systemd: false
check_mk_agent_use_xinetd: true
# install and configure logwatch
check_mk_logwatch: true
# you can use dicts instead of lists (see issue #12)
check_mk_logwatch_syslog_patterns:
  all:
    - I softdog
    - I hispanic
```
