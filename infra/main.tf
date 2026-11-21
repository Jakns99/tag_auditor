locals {
  name_prefix = "tag-auditor-${var.environment}"
  account_id  = data.aws_caller_identity.current.account_id

  common_tags = {
    Owner       = var.owner
    Environment = var.environment
  }
}

module "reports_bucket" {
  source = "./modules/secure_bucket"

  name          = "${local.name_prefix}-reports-${local.account_id}"
  tags          = local.common_tags
  force_destroy = true
}

resource "aws_s3_bucket" "untagged_test" {
  bucket        = "${local.name_prefix}-untagged-test-${local.account_id}"
  force_destroy = true
}