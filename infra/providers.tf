provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Project   = "tag-auditor"
      ManagedBy = "terraform"
    }
  }
}

data "aws_caller_identity" "current" {}