# IMPORTANT: This file was generated from Dockerfile.erb as a part of running:
#
#     ufo ship
#
# To update the FROM statement with the latest base docker image use:
#
#    ufo docker base
#
FROM ubuntu:latest
WORKDIR /app
COPY . .
# uncomment to always force rebuild
# ARG REBUILD=1661542979
ARG FOO1 FOO2
RUN bin/grep_env.sh
# RUN bin/wrapper.sh bin/test.sh
# RUN bin/wrapper.sh npm install
CMD ["bash"]
