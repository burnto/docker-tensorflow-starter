# A TensorFlow Docker Starting Point

This is a simple starting point for developing with TensorFlow via Docker.

I found the [official TensorFlow Docker documentation](https://www.tensorflow.org/versions/r0.9/get_started/os_setup.html#docker-installation) to be missing a few steps for a reasonable development workflow. Rather than run Jupyter in the container , I wanted to be able to run my own scripts in the container

To use:

1. [Install docker](https://docs.docker.com/engine/installation/).
2. Clone this repo.
3. In the repo, run `build_run.sh`. This will build (and takes a long time the
first time you do it) then run a bash shell in interactive mode.
4. On your host machine, edit scripts and files in `share`, e.g.

    ```
    you@yourhost$ echo "import tensorflow as tf; print tf" > share/hello-tensorflow.py
    ```

5. In the docker container shell, run scripts and files in `/share`, e.g.

    ```
    root@d91d7f84a446:/notebooks# python /share/hello-tensorflow.py
    ```
