# Deployment support ansible roles for Syndicate project

## `jenkins-playbook.yml`

This integrates [Jenkins](https://jenkins.io) with
[jenkins-debian-glue](http://jenkins-debian-glue.org/), with an SSL terminating
Apache HTTP proxy, and is used to build the jenkins server at
https://butler.opencloud.cs.arizona.edu . Certain secure files (certificates,
etc.) are not included.


## `hadoop-playbook.yml`

Installs Hadoop on a system, with H-Syndicate.

