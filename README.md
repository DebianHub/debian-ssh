# debian-ssh

Using
-----

The images are built by [Docker hub](https://registry.hub.docker.com/u/krlmlr/debian-ssh/).
Each Debian release corresponds to a tag.  To run an SSH daemon in a new Debian "wheezy"
container:

    docker run -d -p 2222:22 -e ROOT_PASSWORD="password" debianhub/debian-ssh