terraform {
  source = 
    "github.com:bobburke1234/infrastructure-modules.git//app?ref=v0.0.2"
}
inputs = {
  instance_count = 10
  instance_type  = "m4.large"
}