#----- labels for yc resources -----
variable "project_name" {
  description = "project name"
  type        = string
  default     = ""
  # regexall return the COUNT of how many matches the regex found 0 == 0 > true
  validation {
    condition     = length(var.project_name) <= 15 && length(regexall("[^a-zA-Z0-9-]", var.project_name)) == 0
    error_message = "The project_name tag must be no more than 8 characters, and only contain letters, numbers, and hyphens."
  }
}

variable "environment" {
  description = "type of environment"
  type        = string
  default     = ""
  # regexall return the COUNT of how many matches the regex found 0 == 0 > true
  validation {
    condition     = length(var.environment) <= 10 && length(regexall("[^a-zA-Z0-9-]", var.environment)) == 0
    error_message = "The environment tag must be no more than 8 characters, and only contain letters, numbers, and hyphens.ue"
  }
}

variable "resource_tags" {
  description = "label for fast identity some project_names "
  type        = map(string)
  default     = {}
}

variable "create_folder" {
  description = "create new folder. default: false"
  type        = bool
  default     = false
}

variable "create_vpc" {
  description = "create new folder. default: false"
  type        = bool
  default     = false
}

variable "vpc_id" {
  description = "enter vpc_id. default value = default in YC"
  type        = string
  default     = ""
}

variable "networks" {
  description = "map for base network subnets"
  type = map(object({
    base_cidr_block = string
  }))
  default = {}
}

variable "subnets" {
  description = "zone name + number for subntes creation in each av zone"
  type = map(object({
    number = number
  }))
  default = {
    "ru-central1-a" = {
      number = 1
    }
    "ru-central1-b" = {
      number = 2
    }
    "ru-central1-c" = {
      number = 3
    }
  }
}

