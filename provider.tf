terraform {
  required_providers {
    mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = "~> 1.16.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3"
    }
  }
  required_version = "> 1.8"
}

provider "mongodbatlas" {
}
