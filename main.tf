terraform {
  backend "remote" {
    organization = "infrastucture-pipelines-workshop"

    workspaces {
      name = "theo-c-k8s"
    }
  }
}

provider "google" {
  version = "3.10.0"
  project = var.google_project
  region  = var.region
}
