# butler.opencloud.cs.arizona.edu

This server provices continuous integration services for the
[OpenCloud](http://opencloud.us) and
[Syndicate](https://github.com/syndicate-storage) projects.

## Services

 - [Jenkins CI Instance](/jenkins/)

## Binary Packages

Currently, Syndicate packages are available for Ubuntu 14.04 LTS.  These are autobuilt from the master branch of their respective repos on github, and may be unstable.

To configure:

 1. Download and the [butler gpg key](butler_opencloud_cs_arizona_edu_pub.gpg)
    which signs all the packages.

 2. Install the key with `apt-key add butler_opencloud_cs_arizona_edu_pub.gpg`

 3. Add a file named `butler.list` to your `/etc/apt/sources.list.d`, with the
    contents:

    `deb https://butler.opencloud.cs.arizona.edu/repos/release/syndicate syndicate main`

 4. Run `apt-get update`, which will fetch the package lists

 5. Install syndicate with `apt-get install syndicate-core`

