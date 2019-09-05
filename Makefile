.PHONY install_openshift run_openshift

install_openshift:
	ansible-playbook -vv -c local -i localhost, ./openshift4-installer.yaml

run_openshift: install_openshift
	ansible-playbook -vv -c local -i localhost, ./openshift4-runner.yaml

stop_openshift:
	ansible-playbook -vv -c local -i localhost, ./openshift4-stop.yaml
