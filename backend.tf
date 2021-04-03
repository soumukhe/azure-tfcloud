terraform {
  backend "remote" {
    organization = "soumukhe"

    workspaces {
      name = "azure-vm-tfcloud"
    }
  }
} 
