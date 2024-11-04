
# TEAM ONECX-CHAT
module "onecx-chat-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-chat"
  team_description = "onecx chat management services team"
  team_members_file_path   = "products/onecx-chat/team.csv"
}

# ONECX-AI
module "onecx-ai" {
  source = "../../modules/product"
  repository_name        = "onecx-ai"
  repository_description = "OneCx ai Management"
  team_id                = module.onecx-ai-team.team_id
  team_name              = module.onecx-ai-team.team_name
}


# ONEC-AI-SVC
module "onecx-ai-svc" {
  source = "../../modules/python"
  repository_name        = "onecx-ai-svc"
  repository_description = "OneCx ai ai Service"
  team_id                = module.onecx-ai-team.team_id
}

# ONEC-AI-SVC
module "onecx-ai-quarkus-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-ai-quarkus-svc"
  repository_description = "OneCx chat ai quarkus Service"
  team_id                = module.onecx-ai-team.team_id
}


