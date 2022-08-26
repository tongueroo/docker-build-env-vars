# Using Wrapper Script

This uses a [bin/wrapper.sh](bin/wrapper.sh) to source build.env before running whatever command you need, IE: npm install.

* The con is that you have to update your Dockerfile RUN instructions.
* The pro is that you do not have to genreate a Dockerfile dynamically.


## Usage

    docker build -t demo .

On the `ufo docker build` command you'll see the env vars within the build process, something like this:

# Compling ARG in Dockerfile

This compiles a different Dockerfile based on the `build.env` file.

## Usage

    ufo docker compile
    ufo docker build

The `bin/wrapper.sh bin/grep_env.sh` shows that env vars are loaded.

    $ docker build -t demo .
    Sending build context to Docker daemon  27.65kB
    ...
    Step 4/5 : RUN bin/wrapper.sh bin/grep_env.sh
     ---> Running in 219c9622142a
    + source build.env
    grep FOO start
    ++ FOO1=bar1
    ++ FOO2=bar2
    + exec bin/grep_env.sh
    grep FOO end

Note, you may want to remove the `build.sh` at the end of the Docker build proccess.