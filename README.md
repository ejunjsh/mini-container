# mini-container

[![Build Status](https://travis-ci.org/ejunjsh/mini-container.svg?branch=master)](https://travis-ci.org/ejunjsh/mini-container)

a mini container that implement a simple container environment,only run in ubuntu

## install

    go get github.com/ejunjsh/mini-container

## install debootstrap

    sudo apt install debootstrap

## create the ubuntu chroot

    sudo debootstrap --arch amd64 trusty /myroot
    
    
## create network namespace

this script depend on the `iptables`, and your default router interface must `ens33`,if not, you must update the script to your interface name

    sudo sh net.sh

## run

    sudo mini-container run bash
    
