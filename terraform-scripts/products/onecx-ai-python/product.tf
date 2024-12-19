
# TEAM ONECX-AI-PYTHON
module "onecx-ai-python-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-ai-python"
  team_description = "OneCx AI python Management services team"
  team_members_file_path   = "products/onecx-ai-python/team.csv"
}

# ONECX-AI-PYTHON
module "onecx-ai-python" {
  source = "../../modules/product"
  repository_name        = "onecx-ai-python"
  repository_description = "OneCx python AI Management "
  team_id                = module.onecx-ai-python-team.team_id
  team_name              = module.onecx-ai-python-team.team_name
}

# ONECX-AI-PYTHON-SVC
module "onecx-ai-python-svc" {
  source = "../../modules/python"
  repository_name        = "onecx-ai-python-svc"
  repository_description = "OneCx python AI Management Service"
  team_id                = module.onecx-ai-python-team.team_id
}

# ONECX-AI-PYTHON-UI
module "onecx-ai-python-ui" {
  source = "../../modules/python"
  repository_name        = "onecx-ai-python-ui"
  repository_description = "OneCx python AI Management UI"
  team_id                = module.onecx-ai-python-team.team_id
}