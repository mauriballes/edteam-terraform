terraform {
  required_version = ">= 1.10"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.87.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.22.0"
    }
  }

  backend "s3" {
    bucket         = "terraformedteamcurso"
    region         = "us-east-1"
    key            = "tfstate/terraform.state"
    dynamodb_table = "terraformstate"
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "azurerm" {
}