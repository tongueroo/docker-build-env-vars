# Compling ARG in Dockerfile

This compiles a different Dockerfile based on the `build.env` file.

## Usage

    ufo docker compile
    ufo docker build

On the `ufo docker build` command you'll see the env vars within the build process, something like this:

    ufo docker build
    ...
    Step 6/7 : RUN bin/grep_env.sh
     ---> Running in e613fc7c0f47
    grep FOO start
    FOO1=bar1
    FOO2=bar2
    grep FOO end
