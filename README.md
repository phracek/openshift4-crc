# openshift4 and CodeReady Containers on macOS

This repo is used for running OpenShift4 with CodeReady Containers on macOS.
Later on, I would like to enhance it also for Linux.

## First of all install all prerequisities

You can do that, by a command:

```bash
ansible-playbook -vv -c local -i localhost, ./install-rpm-packages.yaml
```

## Setup and start CRC for running OpenShift cluster

```bash
ansible-playbook -vv -c local -i localhost, ./openshift4-installer.yaml
```
