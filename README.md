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

## example configuration

```
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
check_mk_logwatch_syslog_patterns:
  - I softdog
  - I hispanic
```
