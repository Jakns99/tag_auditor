variable "region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-west-2"
}

variable "owner" {
  description = "Value for the Owner tag"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "prod"], var.environment)
    error_message = "Environment must be dev or prod."
  }
}

variable "required_tags" {
  description = "Tag keys every resource must have"
  type        = list(string)
  default     = ["Owner", "Environment"]
}

variable "schedule_expression" {
  description = "How often the auditor runs"
  type        = string
  default     = "rate(1 day)"
}

