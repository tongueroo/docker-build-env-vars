# Compling ARG in Dockerfile without docker history exposing

This compiles a different Dockerfile based on the `build.env` file, but only using the keys. This way the env vars don't show up in `docker history IMAGE`.

It uses the [bin/build.args](bin/build.args) to generate an export command that can be `bash eval` to set UFO_DOCKER_BUILD_OPTIONS

Docs: https://ufoships.com/docs/faq/

Note: Thinking you may be able to adjust the `bin/build_args.rb` script so the the env so instead of the values in the build.env it'll use an env from codebuild env. So this avoids env vars showing up in the codebuild logs also. Unsure though as codebuild might redact the values with ***.

## Usage

    ufo docker compile
    eval $(bin/build_args.rb)
    ufo docker build

On the `ufo docker build` command you'll see the env vars within the dokce build --build-arg command, something like this:

    ufo docker build
    ...
    Building Docker Image
    Compiled Dockerfile.erb to Dockerfile
    => docker build --build-arg FOO1=bar1 --build-arg FOO2=bar2 -t REPO -f Dockerfile .
    ...
    Step 5/6 : RUN bin/grep_env.sh
     ---> Running in 4b8e17593b1c
    grep FOO start
    FOO1=bar1
    FOO2=bar2
    grep FOO end

The env vars won't show up in `docker history` but will show up in CodeBuild console.
