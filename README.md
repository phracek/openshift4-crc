# openshift4 and CodeReady Containers on macOS

This repo is used for running OpenShift4 with CodeReady Containers on macOS.
Later on, I would like to enhance it also for Linux.

## Install all prerequisites (Fedora)

You can do that, with a command:

```bash
ansible-playbook -vv -c local -i localhost, ./install-rpm-packages.yaml
```

## Setup and start CRC for running OpenShift cluster

```bash
make run_openshift
```

**Note: The initial setup can take more than 30 minutes.**

## Stop OpenShift cluster

```bash
make stop_openshift
```


## Troubleshooting

**Missing pull-secret**
```
The task includes an option with an undefined variable. The error was: 'pull_secret' is undefined
```

**Solution**

Log-in with your Red Hat account and download a [pull-secret](https://cloud.redhat.com/openshift/install/metal/user-provisioned).

## Resources

* Red Hat developer portal blog post: [Red Hat OpenShift 4 on your laptop: Introducing Red Hat CodeReady Containers](https://developers.redhat.com/blog/2019/09/05/red-hat-openshift-4-on-your-laptop-introducing-red-hat-codeready-containers/)