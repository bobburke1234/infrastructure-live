include {
  path = find_in_parent_folders()
}

terraform {
   source = "git@github.com:bobburke1234/infrastructure-modules.git//security-groups?ref=v0.0.4"
}

dependencies {
  paths = ["../vpc"]
}
dependency "vpc" {
  config_path = "../vpc"

  mock_outputs_allowed_terraform_commands = ["validate","plan"]

  mock_outputs = {
    vpc = ({
      id = "fake-id"
    })
  }
}

inputs = {
  vpc  = dependency.vpc.outputs.vpc
}
