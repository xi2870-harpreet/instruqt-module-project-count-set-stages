output "container" {
  description = "The MongoDB container"
  value       = resource.container.mongodb
}

output "terminal_mongosh" {
  description = "Mongosh terminal tab"
  value       = resource.terminal.mongosh
}

output "terminal_bash" {
  description = "Bash terminal tab"
  value       = resource.terminal.bash
}

output "page_project" {
  description = "Page for the $project exercise"
  value       = resource.page.project_stage
}

output "page_set" {
  description = "Page for the $set exercise"
  value       = resource.page.set_stage
}

output "page_count" {
  description = "Page for the $count exercise"
  value       = resource.page.count_stage
}
