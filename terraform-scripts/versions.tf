terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.32.0"
    }
    sonarcloud = {
      source  = "rewe-digital/sonarcloud"
      version = "0.5.2"
    }
  }
  required_version = "~> 1.5.2"
}