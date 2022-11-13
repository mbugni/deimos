# DeimOS - The DOOM machine

## Purpose
This project is minimal [Fedora Remix][01] to play DOOM. Just for fun.

## How to build the LiveCD using Fedora
[See a detailed description][02] of how to build the live media.
Assume that `<version>` is the release number of the Fedora you want to use.

### Prepare the build target
Install kickstart tools:

```shell
$ sudo dnf install pykickstart
```

Prepare the target directory for build results:

```shell
$ sudo mkdir /result

$ sudo chmod ugo+rwx /result
```

### Prepare the build enviroment using Podman
Install Podman:

```shell
$ sudo dnf install podman
```

Create the root of the build enviroment:

```shell
$ sudo dnf -y --setopt='tsflags=nodocs' --setopt='install_weak_deps=False' \
 --releasever=<version> --installroot=/result/livebuild-<version> \
 --repo=fedora --repo=updates install lorax-lmc-novirt
```

Create the container for building:

```shell
$ sudo sh -c 'tar -c -C /result/livebuild-<version> . | podman import - fedora/livebuild:<version>'
```

### Build the live image using Podman
Create a single Kickstart file from the base code:

```shell
$ ksflatten --config /<source-path>/fedora/deimos.ks \
 --output /result/fedora-<version>-deimos.ks
```

Build the .iso image by running the container:

```shell
$ sudo podman run --privileged --volume=/dev:/dev --volume=/result:/result \
 -it fedora/livebuild:<version> livemedia-creator --no-virt --nomacboot \
 --make-iso --project='Fedora' --releasever=<version> \
 --tmp=/result --logfile=/result/lmc-logs/livemedia.log \
 --ks=result/fedora-<version>-deimos.ks
```

Remove unused containers when finished:

```
$ sudo podman container prune
```

## Transferring the image to a bootable media
Install live media tools:

```
$ sudo dnf install livecd-iso-to-mediums
```

Create a bootable USB/SD device using the .iso image:

```
$ sudo livecd-iso-to-disk --format --reset-mbr /result/lmc-work-<code>/images/boot.iso /dev/sd[X]
```

## Change Log
All notable changes to this project will be documented in the [`CHANGELOG.md`](CHANGELOG.md) file.

The format is based on [Keep a Changelog][03].

[01]: https://fedoraproject.org/wiki/Remix
[02]: https://weldr.io/lorax/lorax.html
[03]: https://keepachangelog.com/
