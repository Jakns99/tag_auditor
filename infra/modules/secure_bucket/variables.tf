variable "name" {
  description = "Globally unique bucket name"
  type        = string
}

variable "tags" {
  description = "Tags to apply to bucket"
  type        = map(string)
  default     = {}
}

variable "force_destroy" {
  description = "Allow destroy even when the bucket has objects"
  type        = bool
  default     = false
}