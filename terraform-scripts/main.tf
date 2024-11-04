terraform {
  cloud {
    organization = "onecx-devops-github"

    workspaces {
      name = "onecx-apps-devops"
    }
  }
}

provider "github" {
  owner = "onecx-apps"
}

module "onecx-event" {
  source = "./products/onecx-event"
}

module "onecx-chat" {
  source = "./products/onecx-chat"
}

module "onecx-ai" {
  source = "./products/onecx-ai"
}


module "onecx-concessions" {
  source = "./products/onecx-concessions"
}
