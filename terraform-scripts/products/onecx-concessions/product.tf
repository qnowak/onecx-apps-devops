
# TEAM ONECX-CONCESSIONS
module "onecx-concessions-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-concessions"
  team_description = "onecx concessions management services team"
  team_members_file_path   = "products/onecx-concessions/team.csv"
}

# ONECX-CONCESSIONS
module "onecx-concessions" {
  source = "../../modules/product"
  repository_name        = "onecx-concessions"
  repository_description = "OneCx concessions Management"
  team_id                = module.onecx-concessions-team.team_id
  team_name              = module.onecx-concessions-team.team_name
}

# ONEC-CONCESSIONS-SVC
module "onecx-concessions-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-concessions-svc"
  repository_description = "OneCx concessions Management Service"
  team_id                = module.onecx-concessions-team.team_id
}

# ONECX-CONCESSIONS-BFF
module "onecx-concessions-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-concessions-bff"
  repository_description = "OneCx concessions Management BFF"
  team_id                = module.onecx-concessions-team.team_id
}


# ONECX-CONCESSIONS-UI
module "onecx-concessions-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-concessions-ui"
  repository_description = "OneCx concessions Management UI"
  team_id                = module.onecx-concessions-team.team_id
}