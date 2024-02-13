

resource "sonarcloud_project" "project" {
  key        = "${var.organization}_${var.repository_name}"
  name       = var.repository_name
  visibility = "public"
  organization = var.organization
}

resource "sonarcloud_project_main_branch" "branch" {
  project_key = sonarcloud_project.project.key
  name        = var.branch
}