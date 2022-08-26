# Compling ARG in Dockerfile without docker history exposing

This compiles a different Dockerfile based on the `build.env` file, but only using the keys. This way the env vars don't show up in `docker history IMAGE`.

It uses the [bin/build_args.rb](bin/build_args.rb) to generate an export command that can be `bash eval` to set UFO_DOCKER_BUILD_OPTIONS

Docs: https://ufoships.com/docs/faq/

## Usage

Note: The `export FOO1` won't be needed if the codebuild env already has the env values set. It's shown as an example for local testing.

    ufo docker compile
    export FOO1=value1
    export FOO2=value1
    export UFO_DOCKER_BUILD_OPTIONS="$(bin/build_args.rb)"
    ufo docker build

On the `ufo docker build` command you'll see the env vars within the dokce build --build-arg command, something like this:

    ufo docker build
    ...
    Building Docker Image
    Compiled Dockerfile.erb to Dockerfile
    => docker build --build-arg FOO1=$FOO1 --build-arg FOO2=$FOO2 -t REPO -f Dockerfile .
    ...
    Step 5/6 : RUN bin/grep_env.sh
     ---> Running in 4b8e17593b1c
    grep FOO start
    FOO1=value1
    FOO2=value2
    grep FOO end

The env vars won't show up in `docker history` but will show up in CodeBuild console.
