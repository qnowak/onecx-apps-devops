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
