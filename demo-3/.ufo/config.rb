Ufo.configure do |config|
  config.logger.level = "info" # IE: info or debug
  config.app = "demo" # UFO_APP takes higher precedence if set
  config.docker.repo = "gcr.io/boltops-learn/demo"
  # config.ecs.cluster = ":ENV" # :ENV pattern is replaced with UFO_ENV. Default is UFO_ENV=dev

  # VPC Docs: https://ufoships.com/docs/config/vpc/
  # When not set, it's assumed that the ECS cluster using default vpc and default subnets.
  # Notice the ability to use `stack_output` helpers to set the values.
  # config.vpc.id = stack_output("vpc-:ENV.Vpc")
  # config.vpc.subnets.ecs = stack_output("vpc-:ENV.PrivateAppSubnets").split(',')
  # config.vpc.subnets.elb = stack_output("vpc-:ENV.PublicSubnets").split(',')

  # AutoScaling Docs: https://ufoships.com/docs/features/autoscaling/
  # config.autoscaling.enabled = true
  # config.autoscaling.manual_changes.retain = false
  # config.autoscaling.max_capacity = 3
  # config.autoscaling.min_capacity = 2
  # config.autoscaling.target_value = 50.0

  # Route DNS Docs: https://ufoships.com/docs/features/dns-route53-support/
  # config.dns.domain = "domain.com"

  # Ufo exec Docs: https://ufoships.com/docs/intro/ufo-exec/
  # bash is default but may not be available your Docker image
  # Configure to /bin/sh if needed
  # config.exec.command = "/bin/bash"

  # Docs: https://ufoships.com/docs/config/reference/
  # config.ps.summary = false # false to turn off the summary at top of ufo ps output
  # config.ps.format = "table" # Examples: csv table tab json

  # Docs: https://ufoships.com/docs/config/reference/
  # Note: the `-` (minus sign) in front rejects the pattern
  # config.logs.filter_pattern = '- "HealthChecker"'

  # Docs: https://ufoships.com/docs/config/reference/
  # config.ship.docker.quiet = true # default is false
end
