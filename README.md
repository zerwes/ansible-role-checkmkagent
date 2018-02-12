[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](http://www.gnu.org/licenses/gpl-3.0)

ansible-role-checkmkagent
=========================

install check-mk-agent on debian

vars
----

	# xinetd stuff
	checkmk_agent:
	  use_xinetd: True
	  port: 6556
	  # exec: /usr/bin/check_mk_caching_agent for fully redundant monitoring
	  exec: /usr/bin/check_mk_agent
	  only_from:
	    - 127.0.0.1
	  disable: "yes"


