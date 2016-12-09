# Demo deployment support for Syndicate project

## `Deploy the "demo" environment`

###Deploy to Docker

```
$ ansible-playbook -i inventory/docker-demo-example docker-demo.yml
```

###Deploy to hardware (i.e. demo1 & demo2)

```
$ ansible-playbook -i inventory/demo-example demo-playbook.yml
```

#####Install Options:

* "-e irods\_version=\<version number\>"
  - Specify the iRODS version to install (default = "3")
* "-e enable\_debugging=True"
  - Configure the demo-tests environment to build syndicate from source and install all dependencies for debugging (default = "False")
* "-e docker\_preload\_packages=\<true|false\>"
  - Only for Docker, tell docker to pre-load prerequisite iRODS packages to the docker image (saves time if you plan to run multiple iRODS install tests, default = "false")
* "-e docker\_container\_uptime=\<time\>"
  - Only for Docker, specify the time for the docker containers to remain up / running (default = "7d")

##Perform Demo Tests

* Login to the syndicate client test node (docker-synclient1) and run tests
 
```
docker exec -it docker-synclient1 bash
su - syndicate
cd syndicate-tests && ./testwrapper.sh
```

## `jenkins-playbook.yml`

This integrates [Jenkins](https://jenkins.io) with
[jenkins-debian-glue](http://jenkins-debian-glue.org/), with an SSL terminating
Apache HTTP proxy, and is used to build the jenkins server at
https://butler.opencloud.cs.arizona.edu . Certain secure files (certificates,
etc.) are not included.


## `hadoop-playbook.yml`

Installs Hadoop on a system, with H-Syndicate.

## `syndicate-ms-playbook.yml`

Installs Syndicate MetadataService (MS) on a system.
