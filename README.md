# mini-container

a mini container that implement a simple container environment,only run in ubuntu

# install

    go get github.com/ejunjsh/mini-container

# install debootstrap

    sudo apt install debootstrap

# create the ubuntu chroot

    sudo debootstrap --arch amd64 trusty /myroot

# example

    sudo mini-container run bash