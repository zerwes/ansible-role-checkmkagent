export SHELL = /bin/bash
ROLE = ansible-role-checkmkagent

CHECKMK_VERSION ?= 2.4.0p4
DISTRO ?= debian12

run-molecule:
	mkdir -p molecule/default/roles/$(ROLE)
	for d in defaults handlers tasks templates; do cp -r $$d molecule/default/roles/$(ROLE)/; done
	MOLECULE_CHECKMK_VERSION=$(CHECKMK_VERSION) MOLECULE_DISTRO=$(DISTRO) molecule test --destroy never

destroy:
	molecule destroy
	rm -rf molecule/default/roles/

