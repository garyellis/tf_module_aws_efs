variable "mount_targets" {
  description = "a list of mount target maps"
  default = []
  type = "list"
}

variable "name" {
  description = "name identifier to apply to all resources"
}

variable "tags" {
  description = "a map of tags to be applied"
  default = {}
  type = "map"
}

