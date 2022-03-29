variable "region" {
  type = string
}

variable "service" {
  type = string
}

variable "acl" {
  description = "The canned ACL to apply. Defaults to 'private'."
  type        = string
  default     = "private"
}
