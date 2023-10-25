# GITHUB REPOSITORY
module "repository" {
  source = "../github/repository"
  repository_name        = var.repository_name
  repository_description = var.repository_description
  team_permission        = var.team_permission
  team_id                = var.team_id
  branch                 = var.branch
  project_repo           = true
  visibility                = var.visibility
}
