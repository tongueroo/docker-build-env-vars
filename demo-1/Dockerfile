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
ARG REBUILD=1661542234
# # ARG FOO1=bar1 FOO2=bar2
# 
ARG FOO7
RUN bin/test.sh
# RUN bin/wrapper.sh bin/test.sh
# RUN bin/wrapper.sh npm install
CMD ["bash"]
