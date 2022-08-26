#!/usr/bin/env ruby

# Usage:
#
#   export UFO_DOCKER_BUILD_OPTIONS="$(bin/build_args.rb)"
#
return unless File.exist?("build.env")
keys = IO.readlines("build.env").map do |l|
  l.strip.sub(/.*export /,'')
end
build_args = keys.map do |k|
  "--build-arg #{k}=$#{k}"
end
args_list = build_args.join(" ") # IE: --build-arg FOO1=bar1 --build-arg FOO2=bar2
print args_list
