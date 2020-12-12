terraform {
  source = "git::git@github.com:bobburke1234/infrastructure-modules.git//app?v0.0.3"
}
inputs = {
  instance_count = 10
  instance_type  = "m4.large"
}