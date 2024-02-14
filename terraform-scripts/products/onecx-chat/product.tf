
# TEAM ONECX-CHAT
module "onecx-chat-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-chat"
  team_description = "onecx chat management services team"
  team_members_file_path   = "products/onecx-chat/team.csv"
}

# ONECX-CHAT
module "onecx-chat" {
  source = "../../modules/product"
  repository_name        = "onecx-chat"
  repository_description = "OneCx chat Management"
  team_id                = module.onecx-chat-team.team_id
  team_name              = module.onecx-chat-team.team_name
}

# ONEC-CHAT-SVC
module "onecx-chat-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-chat-svc"
  repository_description = "OneCx chat Management Service"
  team_id                = module.onecx-chat-team.team_id
}

# ONEC-AI-SVC
module "onecx-ai-svc" {
  source = "../../modules/python"
  repository_name        = "onecx-ai-svc"
  repository_description = "OneCx chat ai Service"
  team_id                = module.onecx-chat-team.team_id
}


# ONEC-AI-UI
module "onecx-ai-ui" {
  source = "../../modules/python"
  repository_name        = "onecx-ai-ui"
  repository_description = "OneCx chat ai ui"
  team_id                = module.onecx-chat-team.team_id
}

# ONECX-chat-BFF
module "onecx-chat-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-chat-bff"
  repository_description = "OneCx chat Management BFF"
  team_id                = module.onecx-chat-team.team_id
}


# ONECX-CHAT-UI
module "onecx-chat-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-chat-ui"
  repository_description = "OneCx chat Management UI"
  team_id                = module.onecx-chat-team.team_id
}