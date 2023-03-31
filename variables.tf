variable "enable_dns_hostnames" {
  description = "Should be true to enable DNS hostnames in the VPC"
  type        = bool
  default     = true
}

variable "enable_dns_support" {
  description = "Should be true to enable DNS support in the VPC"
  type        = bool
  default     = true
}

variable "private_subnet" {
  description = "Enable/disable private subnet creation"
  type        = bool
  default     = false
}

variable "public_subnet" {
  description = "Enable/disable public subnet creation"
  type        = bool
  default     = false
}
