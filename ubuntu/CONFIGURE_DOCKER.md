# `docker` configuration

`docker` is a framework and a format for building Linux containers, which are
namespaces for isolating workspaces on Linux.

## Add UNIX user `docker` to `sudoers`.

After a bare install of Docker:

```bash
sudo apt install docker.io
```

Running Docker commands may result in failure:

```bash
$ docker run hello-world
Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get http://%2Fvar%2Frun%2Fdocker.sock/v1.40/containers/json: dial unix /var/run/docker.sock: connect: permission denied
```

[This Stack Overflow answer](https://askubuntu.com/a/477554) details why.

In order to run Docker without sudo, run the following commands:

```bash
sudo groupadd docker
sudo gpasswd -a yingw787 docker
newgrp docker
```

Then if you run `docker run hello-world`, the container should run successfully.
