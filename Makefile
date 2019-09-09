.PHONY: install_openshift run_openshift

install_openshift:
	ansible-playbook -vvvv -c local -i localhost, ./openshift4-installer.yaml -e pull_secret=./pull-secret

run_openshift: install_openshift
	ansible-playbook -vvvv -c local -i localhost, ./openshift4-runner.yaml

stop_openshift:
	ansible-playbook -vvvv -c local -i localhost, ./openshift4-stop.yaml
