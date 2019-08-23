.PHONY install_locally vu vd

install_locally:
	ansible-playbook -vv -c local -i localhost, ./install-rpm-packages.yaml
	ansible-playbook -vv -c local -i localhost, ./openshift4-installer.yaml

vu:
	vagrant up

vd:
	vagrant down
