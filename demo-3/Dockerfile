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
RUN bin/wrapper.sh bin/grep_env.sh
# RUN bin/wrapper.sh npm install
CMD ["bash"]
