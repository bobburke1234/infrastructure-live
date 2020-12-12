terraform {
  source = "git::git@github.com:bobburke1234/infrastructure-modules.git//app?ref=v0.0.3"
}
inputs = {
  instance_count = 2
  instance_type  = "t2.small"
}
