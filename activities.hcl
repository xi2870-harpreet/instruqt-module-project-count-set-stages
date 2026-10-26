resource "task" "check_project" {
  title  = "Use $project to reshape documents"
  target = resource.container.mongodb

  check {
    script  = "scripts/activity/project/check.sh"
    timeout = "30s"
  }

  solve {
    script  = "scripts/activity/project/solve.sh"
    timeout = "30s"
  }
}

resource "task" "check_set" {
  title  = "Use $set to add a computed field"
  target = resource.container.mongodb

  check {
    script  = "scripts/activity/set/check.sh"
    timeout = "30s"
  }

  solve {
    script  = "scripts/activity/set/solve.sh"
    timeout = "30s"
  }
}

resource "task" "check_count" {
  title  = "Use $count to count documents"
  target = resource.container.mongodb

  check {
    script  = "scripts/activity/count/check.sh"
    timeout = "30s"
  }

  solve {
    script  = "scripts/activity/count/solve.sh"
    timeout = "30s"
  }
}
