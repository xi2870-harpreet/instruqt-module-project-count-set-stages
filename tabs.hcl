resource "terminal" "mongosh" {
  target = resource.container.mongodb
  shell  = "/bin/bash"
  cmd    = "/scripts/mongosh.sh"
}

resource "terminal" "bash" {
  target = resource.container.mongodb
  shell  = "/bin/bash"
}
