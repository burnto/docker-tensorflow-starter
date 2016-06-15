# A TensorFlow Docker Starting Point

This is a simple starting point for developing with TensorFlow via Docker.

I love the [Docker install option for TensorFlow](https://www.tensorflow.org/versions/r0.9/get_started/os_setup.html#docker-installation), but I found it missing a few little steps to enable a more general development workflow. Rather than run Jupyter in the container, I wanted to be able to run my own scripts in the container, but edit on my machine.

This repo is just a simple `build_run.sh` script that builds and runs a prompt in a Docker container with TensorFlow dependencies installed, and with a `/share` volume shared with `share` on the host, for easy editing.

To use:

1. [Install docker](https://docs.docker.com/engine/installation/).
2. Clone this repo.
3. In the repo, run `build_run.sh`. This will build (and takes a long time the
first time you do it) then run an interactive bash shell.
4. On your host machine, edit scripts and files in `share`, e.g.

    ```
    you@yourhost$ echo "import tensorflow as tf; print tf" > share/hello-tensorflow.py
    ```

5. In the docker container shell, run scripts and files in `/share`, e.g.

    ```
    root@d91d7f84a446:/share# python hello-tensorflow.py
    ```

Within the container, all the standard TensorFlow docs pretty much apply. For example, [running a demo model](https://www.tensorflow.org/versions/r0.9/get_started/os_setup.html#run-a-tensorflow-demo-model) will just work:

    ```
    root@d91d7f84a446:/# python -m tensorflow.models.image.mnist.convolutional
    Successfully downloaded train-images-idx3-ubyte.gz 9912422 bytes.
    Successfully downloaded train-labels-idx1-ubyte.gz 28881 bytes. 
    ...etc...
    ```

