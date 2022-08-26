#!/usr/bin/env ruby

return unless File.exist?("build.env")
key_value_map = IO.readlines("build.env").map do |l|
  l.strip.sub(/.*export /,'')
end
build_args = key_value_map.map do |kv|
  "--build-arg #{kv}"
end
args_list = build_args.join(" ") # IE: --build-arg FOO1=bar1 --build-arg FOO2=bar2

# IE: UFO_DOCKER_BUILD_OPTIONS="--build-arg FOO1=bar1 --build-arg FOO2=bar2"
puts %Q|export UFO_DOCKER_BUILD_OPTIONS="#{args_list}"|
