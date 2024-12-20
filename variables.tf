variable "aws_account" {
  type = string
  default = "340752812582"
}

variable "project-tag"{
    type = string
    default = "M3"
}

variable "environment" {
    type = string
    default = "dev"
}

variable "parent_zone_ids" {
    type = map(string)
    default = {
      internal = 1
      private = null
    }
}