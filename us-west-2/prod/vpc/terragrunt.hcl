include {
  path = find_in_parent_folders()
}

terraform {
   source = "git@github.com:bobburke1234/infrastructure-modules.git//vpc?ref=v0.0.4"
}
